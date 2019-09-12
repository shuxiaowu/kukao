<?php
namespace app\mobile\model;

use think\Model;
use think\Db;

class Home{
   
   //词汇过滤
   public function shield( $string ){
     if ( $string != '' ) {
       if ( !$wordfilter = cache('wordfilter') ) {
	     $res = Db::name('systemconfig')->field('wordfilter')->where('Id',1)->find();
	     if ( $res ) {
	   	    $wordfilter = $res['wordfilter'];
	   	    cache('wordfilter',$wordfilter,7200);
	     }
       }
	   if ( $wordfilter != '' ) {
	     $wordfilter = explode("|",$wordfilter);
		 foreach( $wordfilter as $key=>$val ) {
		   $string = str_ireplace($val,"**",$string);
		 }
	   }
	   return $this->illegalword($string);
	 } else {
	   return false;
	 }
   }
   
   //检测
   public function cktype($db,$id) {
     if ($db!='' && $id!='') {
	   return (Db::name($db)->where(['enabled'=>1,'Id'=>$id])->count()) ? true : false;
     } else {
	   return false;
     }
   }
   
   //返回ID
   public function ckdomain($db,$domain) {
	 if ($db!='' && $domain!='') {
	   $data = Db::name($db)->field('Id')->where(['domain'=>$domain])->find();
	   return (!$data) ? false : $data['Id'];
	 } else {
	   return false;
	 }
   }
   
   //获取上一页
   public function getpage($conf=''){
     $sty    = isset($conf['sty'])    ? intval($conf['sty']) : 0;
     $order  = isset($conf['order'])  ? $conf['order']       : 'istop DESC,date DESC';
	 $id     = isset($conf['id'])     ? intval($conf['id'])  : 0;
	 $tables = isset($conf['tables']) ? $conf['tables']      : 'information';
	 $return = ['topid'=>0,'nextid'=>0];
	 if ($id && $tables!='') {
	   $where   = '1=1 AND enabled=1';
	   if($sty) $where .= ' AND sty='.$sty;
	   if(!$dlist = cache('dlist'.$tables.$sty)) {
	     $dlist = Db::name($tables)->field('Id')->where($where)->order($order)->select();
		 cache('dlist'.$tables.$sty,$dlist);
	   }
	   if($dlist) {
	     foreach($dlist as $key=>$val) {
		   if($val['Id'] == $id) {
		     $return['topid']  = isset($dlist[$key-1]['Id']) ? $dlist[$key-1]['Id'] : 0;
			 $return['nextid'] = isset($dlist[$key+1]['Id']) ? $dlist[$key+1]['Id'] : 0;
		   }
		 }
	   }
	 }
	 return $return;
   }
   
   //获取数据
   public function gdata( $tables = '', $id = '', $field = 'topic' , $default = false ) {
     if ( $tables !='' && $field !='' && $id != '' ) {
	   $where  = ( is_int( $id ) ) ? ['Id'=>$id] : $id;
	   $data   = Db::name( $tables )->field($field)->where($where)->find();
	   if ( $data ) {
		 return ( strpos( $field,',' ) ) ? $data : $data[$field];
	   } else {
	     return $default;
	   }
	 } else {
	   return $default;
	 }
   }
   
   //浏览器版本
   private function brower(){
	 if (strpos($_SERVER['HTTP_USER_AGENT'], 'Maxthon')) {  
	   $browser = 'Maxthon'; 
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE')) {  
	   $browser = 'IE';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'NetCaptor')) {  
	   $browser = 'NetCaptor';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Netscape')) {  
	   $browser = 'Netscape';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Lynx')) {  
	   $browser = 'Lynx';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Opera')) {  
	   $browser = 'Opera';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Chrome')) {  
	   $browser = 'Google';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Firefox')) {  
	   $browser = 'Firefox';  
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'Safari')) {  
	   $browser = 'Safari'; 
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'iphone') || strpos($_SERVER['HTTP_USER_AGENT'], 'ipod')) {  
	   $browser = 'iphone';
	 } else if(strpos($_SERVER['HTTP_USER_AGENT'], 'ipad')) {  
	   $browser = 'iphone';
	 } elseif(strpos($_SERVER['HTTP_USER_AGENT'], 'android')) {  
	   $browser = 'android';
	 } else {  
	   $browser = 'other';  
	 }
	 return addslashes($browser);
   }
   
   //记录浏览记录
   public function recordonline(){
	 $isonline = 0;
	 if (!$isonline = cache('systemonline')) {
	   $isonline = DB::name('systemconfig')->field('isonline')->where(['Id'=>1])->find();
	   if($isonline){
		 cache('systemonline',$isonline['isonline'],3600);
		 $isonline = $isonline['isonline'];
	   }
	 }
	 $online_cutout = cookie('?online_cutout') ? cookie('online_cutout') : '';
	 $myaction      = cookie('?myaction')      ? cookie('myaction')      : '';
	 $refer         = cookie('?refer')         ? cookie('refer')         : '';
	 if ( $isonline && !$online_cutout ) {
		$action   = (isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER']!='') ? addslashes($_SERVER['HTTP_REFERER']) : '';
		$actionid = ($action!='') ? md5($action) : '';
		$ip       = request()->ip();
		$day      = date('Y-m-d');
		if ($actionid != '') {
			$isonline = DB::name('online')->field('stime,etime')->where(['actionid'=>$actionid,'ip'=>$ip,'day'=>$day])->find();
			$online   = false;
			if (!$isonline && $action!='') {
			  $online = DB::name('online')->insert(['action' => $action,'actionid'=>$actionid,'refer' => $refer,'ip' => $ip,'agent' => $this->brower(),'day' => $day,'stime' => time()]);
			  cookie('myaction',$actionid);
			  cookie('refer',$action);
			} else {
			  if($myaction!='') DB::name('online')->where(['actionid'=>$myaction,'ip'=>$ip,'day'=>$day])->limit(1)->update(['etime'=>time()]); //更新结束时间
			  $etime = ($isonline['etime'] > 0) ? time()+intval($isonline['etime']-$isonline['stime']) : 0;
			  if ($actionid != '') {
				DB::name('online')->where(['actionid'=>$actionid,'ip'=>$ip,'day'=>$day])->limit(1)->setInc('hit');
				DB::name('online')->where(['actionid'=>$actionid,'ip'=>$ip,'day'=>$day])->limit(1)->update(['stime'=>time(),'etime'=>$etime]);
			  }
			}
			if ($online) cookie('online_cutout',true,1);
		}
	 }
	 return ['state'=>1,'msg'=>'success'];
   }
   
   //屏蔽关键词
   public function dosqlxss($str){
	 $str = str_ireplace("and","",$str);
	 $str = str_ireplace("exec","",$str);
	 $str = str_ireplace("insert","",$str);
	 $str = str_ireplace("select","",$str);
	 $str = str_ireplace("delete","",$str);
	 $str = str_ireplace("update","",$str);
	 $str = str_ireplace("count","",$str);
	 $str = str_ireplace("*","",$str);
	 $str = str_ireplace("%","",$str);
	 $str = str_ireplace("from","",$str);
	 $str = str_ireplace("union","",$str);
	 $str = str_ireplace("master","",$str);
	 $str = str_ireplace("truncate","",$str);
	 $str = str_ireplace("char","",$str);
	 $str = str_ireplace("declare","",$str);
	 $str = str_ireplace("onerror","",$str);
	 $str = str_ireplace("CR","",$str);
	 $str = str_ireplace("LF","",$str);
	 $str = str_ireplace("javascript:","",$str); 
	 $str = str_ireplace("jscript:","",$str);
	 $str = str_ireplace("vbscript:","",$str);
	 $str = str_ireplace("scirpt","",$str);	
	 $str = str_ireplace("=","",$str);
	 $str = str_ireplace("@","#",$str);
	 $str = str_ireplace(";","；",$str);
	 $str = $this->illegalword($str);
	 return htmlspecialchars($str);
   }
   
   //强制屏蔽非法词
   public function illegalword($string = ''){
     if ( $string == '' ) return '';
	 if ( config('illegalword_on') ) {
	   vendor("topthink.think-illegalword.illegalword");
	   $word   = BH_ILLEGALWORD;
	   if ( $word != '' && $string )  {
	     $word = explode('|',$word);
	     if ( count( $word ) > 0 ) {
		   foreach( $word as $wv ) {
		     $string = str_ireplace($wv,'**',$string);
		   }   
	     }
	   }
	 }
	 return $string;
   }
   
   //禁用IP
   public function shieldip($ip,$shieldip,$iptips = '' ) {
     if ( $ip != '' && $shieldip != '' ) {
	   $shieldip = explode("|",$shieldip);
	   foreach( $shieldip as $key=>$val  ) {
	     if ( $val == $ip ) {
		   return ( $iptips != '' ) ? $iptips : '抱歉，您的IP将禁用一段时间。';
		 }
	   }
	 }
   }
   
}
