<?php
 //获取根目录
 function root(){
    $root  = $phpfile = '';
	$iscgi = (0 === strpos(PHP_SAPI,'cgi') || false !== strpos(PHP_SAPI,'fcgi')) ? 1 : 0 ;
	if ( $iscgi ) {
	  $temp    = explode('.php',$_SERVER['PHP_SELF']);
	  $phpfile = rtrim(str_replace($_SERVER['HTTP_HOST'],'',$temp[0].'.php'),'/');
	} else {
	  $phpfile = rtrim($_SERVER['SCRIPT_NAME'],'/');
	}
	$root =   rtrim(dirname($phpfile),'/');
	return (($root=='/' || $root=='\\') ? '' : $root);
 }
  // 截取
function subtext($text,$init,$length,$type=1){
    if(mb_strlen($text, 'utf8') > $length) 
        if($type==1){
            return mb_substr($text, $init, $length, 'utf8').'';
        }else{
            return mb_substr($text, $init, $length, 'utf8').'...';
        }
    
    return $text;
}
  // 截取
function subtopic($text,$init,$length){
    if(mb_strlen($text, 'utf8') > $length) 
    return mb_substr($text, $init, $length, 'utf8').'...';
    return $text;
}
 //写入日志
 function writelog($name = "", $content = ""){
    if (!$content || !$name) {
        return false;
    }
	if ( !is_dir( getcwd() . DIRECTORY_SEPARATOR . 'runtime/logs' ) ) {
	  mkdir( getcwd() . DIRECTORY_SEPARATOR . 'runtime/logs' );
	}
    $dir = getcwd() . DIRECTORY_SEPARATOR . 'runtime/logs' . DIRECTORY_SEPARATOR . $name;
    if (!is_dir($dir)) {
        if (!mkdir($dir)) {
            return false;
        }
    }
    $filename = $dir . DIRECTORY_SEPARATOR . date("Ymd", time()) . '.php';
    @$logs = (include $filename);
    if ($logs && !is_array($logs)) {
        unlink($filename);
        return false;
    }
    $logs[] = array("time" => date("Y-m-d H:i:s"), "content" => $content);
    $str = "<?php \r\n return " . var_export($logs, true) . ";";
    if (!($fp = @fopen($filename, "wb"))) {
        return false;
    }
    if (!fwrite($fp, $str)) {
        return false;
    }
    fclose($fp);
    return true;
 }
 
 //手机端判断
 function ismobile(){
    $mobile = isset($_GET['mobile']) ? $_GET['mobile'] : '';
    if ($mobile != '') {
        session('ismobile', true);
        return true;
    }
    if (session('ismobile')) {
        return true;
    }
    $host = isset($_SERVER['HTTP_HOST']) ? trim($_SERVER['HTTP_HOST']) : '';
    if ($host != '') {
        $host = explode(".", $host);
        if (in_array('m', $host)) {
            return true;
        }
    }
    $mobile = array();
    static $mobilebrowser_list = 'Mobile|iPhone|Android|WAP|NetFront|JAVA|OperasMini|UC|WindowssCE|Symbian|Series|webOS|SonyEricsson|Sony|BlackBerry|Cellphone|dopod|Nokia|samsung|PalmSource|Xphone|Xda|Smartphone|PIEPlus|MEIZU|MIDP|CLDC';
    if (preg_match("/{$mobilebrowser_list}/i", $_SERVER['HTTP_USER_AGENT'], $mobile)) {
        return true;
    } else {
        if (preg_match('/(mozilla|chrome|safari|opera|m3gate|winwap|openwave)/i', $_SERVER['HTTP_USER_AGENT'])) {
          return false;
        }
    }
 }

