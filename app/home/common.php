<?php
 //获取图片
 function insidepic($ctag=0) {
  if (!$ctag) return false;
   if(!$articleadv = cache('articleadv'.$ctag)) {
	 $articleadv   = db('advdata')->field('pic,topic,linkurl')->where(['ctag'=>$ctag])->order('ord ASC')->find();
	 ($articleadv) ? cache('articleadv'.$ctag,$articleadv,3600) : '';
   }
   return $articleadv;
 }
  
 //图片显示
 function upic($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
	 return $path.'default/default.png';
   } else {
	 return $path.$pic;
   }
 }
  function npic($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
   return $path.'default/t_default.png';
   } else {
   return $path.$pic;
   }
 }
 // links
  function lpic($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
   return $path.'default/links.png';
   } else {
   return $path.$pic;
   }
 }

 //图片显示
 function banner($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
   return $path.'default/banner.jpg';
   } else {
   return $path.$pic;
   }
 }
 function gettopic($tables,$id,$field='topic'){
  if ($tables!='' && $id!=0) {
  $dobj = db($tables)->field($field)->where(array('Id'=>$id))->find();
  return ($dobj) ? $dobj[$field] : '--';
} else {
  return '--';
}
}
 //获取tdk
 function gettdk($id,$tables='') {
   if ( $id && $tables!='' ) {
     $data = db('title')->field('title,keyword,metades')->where(['tables'=>$tables,'tid'=>$id])->find();
   } else {
     $data = db('title')->field('title,keyword,metades')->where(['Id'=>$id])->find();
   }
   return ($data) ? $data : array('title'=>'','keyword'=>'','metades'=>'');
 }