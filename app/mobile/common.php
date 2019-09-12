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
 function UPIC($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
	 return $path.'default/default.jpg';
   } else {
	 return $path.$pic;
   }
 }
  //图片显示300
 function BPIC($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
   return $path.'default/banner.jpg';
   } else {
   return $path.$pic;
   }
 }
   //图片显示717
 function IPIC($pic,$scence = ''){
   $path = root().'/'.config('upload_path').'images/';
   if ( $pic == '' || (!file_exists(config('upload_path').'images/'.$pic))) {
   return $path.'default/default.png';
   } else {
   return $path.$pic;
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