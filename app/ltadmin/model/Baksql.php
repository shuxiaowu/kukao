<?php
namespace app\ltadmin\model;
use think\Model;
use think\Db;

class Baksql{
	
    public    $config = '';                                                        //相关配置
    public    $model = '';                                                         //实例化一个model
    public    $content;                                                            //内容
    public    $dbName = '';                                                        //数据库名
    public    $dir_sep = '/';                                                      //路径符号
    protected $autoCheckFields = false;
    protected $table = '';
  
    public function __construct() {
         header("Content-type: text/html;charset=utf-8");
         set_time_limit(0);                                                      //不超时
         ini_set('memory_limit','500M');
         $this->config = array(
            'path' => config('db_backup'),                                          //备份文件存在哪里
            'isCompress' => 0,                                                  //是否开启gzip压缩      【未测试】
            'isDownload' => 0                                                   //备份完成后是否下载文件 【未测试】
        );
        $this->dbName = config('database.database');                                           //当前数据库名称
        $this->model  = db();
         //$sql = 'set interactive_timeout=24*3600';                            //空闲多少秒后 断开链接
        //$this->model>execute($sql);
     }
	 
	 //获取数据库信息
     public function getTables($dbName = '') {
         if (!empty($dbName)) {
             $sql = 'SHOW TABLES FROM ' . $dbName;
         } else {
             $sql = 'SHOW TABLES ';
         }
         $result = Db::query($sql);
         $info = array();
         foreach ($result as $key => $val) {
			   $info[$key] = current($val);
		 }
         return $info;
     }
	 
	 //按表备份，可批量
     public function backtables($tab) {
		 if (count($tab) > 0) {
		   return $this->backup($tab);
		 } else {
		   return false;
		 }
     }
	 
	 //解析
     private function backquote($str) {
         return "`{$str}`";
     }
	 
	 
     /* -
     * +------------------------------------------------------------------------
     * * @ 把传过来的数据 按指定长度分割成数组
     * +------------------------------------------------------------------------
     * * @ $array 要分割的数据
     * * @ $byte  要分割的长度
     * +------------------------------------------------------------------------
     * * @ 把数组按指定长度分割,并返回分割后的数组
     * +------------------------------------------------------------------------
     */
     private function chunkArrayByByte($array, $byte = 5120) {
         $i = 0;
         $sum = 0;
         $return = array();
         foreach ($array as $v) {
             $sum += strlen($v);
             if ($sum < $byte) {
                 $return[$i][] = $v;
             } elseif ($sum == $byte) {
                 $return[++$i][] = $v;
                 $sum = 0;
             } else {
                 $return[++$i][] = $v;
                 $i++;
                 $sum = 0;
             }
         }
         return $return;
     }
	 
	 //数据备份
     private function backup($tables) {
         if (empty($tables))
             $this->error('没有需要备份的数据表!');
         $this->content = '/* This file is created by MySQLReback ' . date('Y-m-d H:i:s') . ' */';
         foreach ($tables as $i => $table) {
			 $mtable= $table;
             $table = $this->backquote($table);                                  //为表名增加 ``
             $tableRs = Db::query("SHOW CREATE TABLE {$table}");       //获取当前表的创建语句
            if (!empty($tableRs[0]["Create View"])) {
                 $this->content .= "\r\n /* 创建视图结构 {$table}  */";
                 $this->content .= "\r\n DROP VIEW IF EXISTS {$table};/* MySQLReback Separation */ " . $tableRs[0]["Create View"] . ";/* MySQLReback Separation */";
             }
             if (!empty($tableRs[0]["Create Table"])) {
                 $this->content .= "\r\n /* 创建表结构 {$table}  */";
                 $this->content .= "\r\n DROP TABLE IF EXISTS {$table};/* MySQLReback Separation */ " . $tableRs[0]["Create Table"] . ";/* MySQLReback Separation */";
                 $tableDateRow = Db::query("SELECT * FROM {$table}");
                 $valuesArr = array();
                 $values = '';
                 if (false != $tableDateRow) {
                     foreach ($tableDateRow as &$y) {
                         foreach ($y as &$v) {
                            if ($v=='')                                  //纠正empty 为0的时候  返回tree
                                 $v = 'null';                                    //为空设为null
                             else
                                 $v = "'" . ($v) . "'";       //非空 加转意符 mysql_real_escape_string
                        }
                         $valuesArr[] = '(' . implode(',', $y) . ')';
                     }
                 }
                 $temp = $this->chunkArrayByByte($valuesArr);
                 if (is_array($temp)) {
                     foreach ($temp as $v) {
                         $values = implode(',', $v) . ';/* MySQLReback Separation */';
                         if ($values != ';/* MySQLReback Separation */') {
                             $this->content .= "\r\n /* 插入数据 {$table} */";
                             $this->content .= "\r\n INSERT INTO {$table} VALUES {$values}";
                         }
                     }
                 }
 //                dump($this->content);
 //                exit;
             }
			 cache('backtable'.$mtable,'1');
         }
         if (!empty($this->content)) {
             $this->setFile();
         }
         return true;
     }
	 
     /* -
     * +------------------------------------------------------------------------
     * * @ 下载备份文件
     * +------------------------------------------------------------------------
     */
     public function downloadBak($file_name) {
         if (!file_exists($file_name)) { //检查文件是否存在
            return false;
            exit;
         } else {
             $file = fopen($file_name, "r"); // 打开文件
            // 输入文件标签
             header('Content-Encoding: none');
             header("Content-type: application/octet-stream");
             header("Accept-Ranges: bytes");
             header("Accept-Length: " . filesize($file_name));
             header('Content-Transfer-Encoding: binary');
             header("Content-Disposition: attachment; filename=" . str_ireplace(config("db_backup"),'',$file_name));  //以真实文件名提供给浏览器下载
             header('Pragma: no-cache');
             header('Expires: 0');
             //输出文件内容
            echo fread($file, filesize($file_name));
            fclose($file);
            exit;
         }
     }
	 
     /* -
     * +------------------------------------------------------------------------
     * * @ 把数据写入磁盘
     * +------------------------------------------------------------------------
     */
     private function setFile() {
         $recognize = '';
         $recognize = $this->dbName;
         $fileName = $this->trimPath($this->config['path'] . $this->dir_sep . $recognize . '_' . date('YmdHis').'.sql');
         $path = $this->setPath($fileName);
         if ($path !== true) {
             $this->error("无法创建备份目录目录 '$path'");
         }
         if ($this->config['isCompress'] == 0) {
             if (!file_put_contents($fileName, $this->content, LOCK_EX)) {
                 $this->error('写入文件失败,请检查磁盘空间或者权限!');
             }
         } else {
             if (function_exists('gzwrite')) {
                 $fileName .= '.gz';
                 if ($gz = gzopen($fileName, 'wb')) {
                     gzwrite($gz, $this->content);
                     gzclose($gz);
                 } else {
                     $this->error('写入文件失败,请检查磁盘空间或者权限!');
                 }
             } else {
                 $this->error('没有开启gzip扩展!');
             }
         }
         if ($this->config['isDownload']) {
             $this->downloadFile($fileName);
         }
     }
	 
     private function trimPath($path) {
         return str_replace(array('/', '\\', '//', '\\\\'), $this->dir_sep, $path);
     }

     private function setPath($fileName) {
         $dirs = explode($this->dir_sep, dirname($fileName));
         $tmp = '';
         foreach ($dirs as $dir) {
             $tmp .= $dir . $this->dir_sep;
             if (!file_exists($tmp) && !@mkdir($tmp, 0777))
                 return $tmp;
         }
         return true;
     }
	 
	 //下载
     private function downloadFile($fileName) {
         ob_end_clean();
         header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
         header('Content-Description: File Transfer');
         header('Content-Type: application/octet-stream');
         header('Content-Length: ' . filesize($fileName));
         header('Content-Disposition: attachment; filename=' . basename($fileName));
         readfile($fileName);
     }
	 
	 //自动备份
     public function backAuto() {
         $tables  = $this->getTables();
		 $notback = config('notbacktable');
		 if ( $notback != '' ) {
		   $notback  = explode(",",$notback);
		   $newtable = array();
		   foreach( $notback as $nval ) {
		     $newtable[] = config('database.prefix').$nval;
		   }
		   foreach( $tables as $tkey=>$tval ) {
		     if ( in_array($tval,$newtable) ) {
			   unset($tables[$tkey]);
			 } 
		   }
		 }
         if ($this->backup($tables)) {
             return true;
         } else {
             return false;
         }
     }
}
