<?php
namespace app\ltadmin\model;

use think\Model;
use think\Db;
use think\Request;

class File{
   
  protected $table = '';
  
  public function picupload($act=''){//图片上传
    $data       = $this->uploadSet();
	$exts       = ($data['picsuffix']!='') ? $data['picsuffix']              : 'jpg,gif,png,jpeg';
	$maxSize    = ($data['picsize'])       ? intval($data['picsize'])*1024   : 1024*1024*1024*10;
	$from       = input('post.from','');
	$uploadname = ($act == '') ? 'Filedata' : 'imgFile';
	$file       = request()->file($uploadname);
	$validate   = array('size'=>$maxSize,'ext'=>$exts);
	$movepath   = '';
	$dpath      = date('Ymd');
	if ( $from == 'meituxiuxiu' || $act == 'editor' ) {
	  $fname = './public/kindedit/attached/';
	  if ( !file_exists($fname.'image') ) mkdir($fname.'image');
	  $movepath = ROOT_PATH . $fname.'image';
	} else {
	  $movepath = ROOT_PATH . config('upload_path').'images';
	}
	$info       = $file->rule('uniqid')->validate($validate)->move($movepath.'/'.$dpath);
	if ( $info ) {
	  $iswater  = input('post.iswater',0,'intval'); //是否加水印
	  $width    = input('post.width',0,'intval');
	  $height   = input('post.height',0,'intval');
	  $imgPath  = $dpath.'/'.$info->getSaveName();
	  if ($width > 0 && $height > 0) {
	    $filepath = $this->thumb($height,$width,$imgPath,$act);
		if ($filepath) {
		  return array('file'=>$this->addwater($filepath,$iswater,$act),'error'=>'');
		} else {
		  return array('file'=>'','error'=>'裁剪失败');
		}
	  } else { 
	    if ( $from == 'meituxiuxiu' || $act == 'editor' ) {
		  $upmaxsize  = $data['picmaxsize'];
		  $upmaxwidth = $data['picmaxwidth'];
		  $cropwidth  = $data['cropwidth']; //裁剪宽度
		  $setsize    = filesize($movepath.'/')*1024;
		  $info       = getimagesize($fname.'image/'.$imgPath);
		  $picw       = isset($info[0]) ? $info[0] : 0;
		  $pich       = isset($info[1]) ? $info[1] : 0;
		  if ( ($setsize && $setsize >= $upmaxsize) || $picw>=$upmaxwidth ) {
		    $width  = ($picw>$cropwidth) ? $cropwidth : 0;
			$height = ($width) ? intval($cropwidth/$width) * $pich : 0;
		  }
		  if ( $width > 0 && $height > 0 ) {
			  $filepath = $this->thumb($height,$width,$imgPath,'editor');
			  if ($filepath) {
				return array('file'=>$this->addwater($filepath,$iswater,'editor'),'error'=>'');
			  } else {
				return array('file'=>'','error'=>'裁剪失败');
			  }
		  } else {
		    return array('file'=>$this->addwater($imgPath,$iswater,'editor'),'error'=>'');
		  }
		} else {
	      return array('file'=>$this->addwater($imgPath,$iswater),'error'=>'');
		}
	  }
	} else {
	  return array('file'=>'','error'=>$file->getError());
	}
  }
  
  //裁剪
  public function croppic($conf = array()){
    $path    = isset($conf['path'])    ? $conf['path']    : '';
	$w       = isset($conf['w'])       ? $conf['w']       : 0;
	$h       = isset($conf['h'])       ? $conf['h']       : 0;
	$x       = isset($conf['x'])       ? $conf['x']       : 0;
	$y       = isset($conf['y'])       ? $conf['y']       : 0;
	$r       = isset($conf['r'])       ? $conf['r']       : 0;
	$iswater = isset($conf['iswater']) ? $conf['iswater'] : 0;
	$delpic  = isset($conf['delpic'])  ? $conf['delpic']  : 0;
	if ( $path == '' ) return array('state'=>0,'msg'=>'图片不存在');
	if ( $w == 0 || $h == 0 ) return array('state'=>0,'msg'=>'裁剪图片宽高不得为0像素');
	$abspath  = config('upload_path').'images/';
	if ( !file_exists($abspath.$path) ) return array('state'=>0,'msg'=>'图片不存在');
    $img = \think\Image::open($abspath.$path);
	$info = pathinfo($path);  
	$savefile = '';
    $savefile .= (isset($info['dirname']) && $info['dirname']!='') ? $info['dirname'].'/' : '';
	$md5file   = md5($info['filename'].'_'.$w.'_'.$h);
	$savefile .= substr($md5file,0,13).'.'.$info['extension'];
    $img->crop($w,$h,$x,$y)->save($abspath.$savefile);
	$this->addwater($savefile,$iswater);
	if(!$delpic) @unlink($abspath.$path);
	return array('state'=>1,'msg'=>'','file'=>$savefile);
  }
  
  //添加水印
  public function addwater($imgPath,$iswater=0,$act=''){
	$data  = $this->uploadSet();
	if($iswater) return ($imgPath);
	if(($data['iswater']==1 && $data['waterpic']!='') || ($data['iswater']==1 && $data['fonttext']!='')){
	  $wpath    = config('upload_path').'images/';
	  if ( $act == '' ) {
	    $abspath  = $wpath;
	  } else if ( $act == 'editor' ) {
		$abspath  = './public/kindedit/attached/image/';
	  }
	  $image    = \think\Image::open($abspath.$imgPath);
	  if( $data['waterpic']!='' ){
	    $image->water($wpath.$data['waterpic'],$data['waterpos'],$data['wateralpha'])->save($abspath.$imgPath);
		return ($imgPath);
	  }
	  if( $data['fonttext']!='' ){
		$facetype = ($data['facetype']==0) ? 'c:\\WINDOWS\\Fonts\\simsun.ttc' : dirname(THINK_PATH).'/public/water/'.$data['facetype'].'.ttf';
		$image->text($data['fonttext'],$facetype,$data['fontsize'],$data['fontcolor'],$data['fontpos'])->save($abspath.$imgPath);
	 return ($imgPath);
	  }
	}
	return $imgPath;
  }

  //私有裁剪
  public function thumb($h,$w,$file,$act='',$type=1,$savefile=''){
	 if ( $act == '' ) {
	   $abspath  = config('upload_path').'images/';
	 } else if ( $act == 'editor' ) {
	   $abspath  = './public/kindedit/attached/image/';
	 }
     if(!file_exists($abspath.$file)){
	   return false;
	 }else{
	   $img =  \think\Image::open($abspath.$file);
	   if($savefile==''){
		 $info = pathinfo($file);  
	     $savefile = '';
		 $savefile .= (isset($info['dirname']) && $info['dirname']!='') ? $info['dirname'].'/' : '';
		 $savefile .= $info['filename'].'_'.$w.'_'.$h.'.'.$info['extension'];
	   }
	   $img->thumb($w,$h,$type)->save($abspath.$savefile);
	   //删除掉原图
	   if ( $act == '' ) {
	     @unlink(config('upload_path').'images/'.$file);
	   } else if ( $act == 'editor' ) {
		 @unlink('./public/kindedit/attached/image/'.$file);
	   }
	   return $savefile;
	 }
  }
  
  //获取配置
  private function uploadSet(){
    if (!$uploadField = cache('uploadField')) {
	  $data  = Db::name('systemconfig')->field('iswater,fontpos,waterpos,waterpic,fonttext,fontsize,fontcolor,facetype,rotation,wateralpha,picsuffix,filesuffix,picsize,filesize,picmaxwidth,picmaxsize,cropwidth')->where(array('Id'=>1))->find();
	  cache('uploadField',$data,3600*24);
	  return $data;
	} else {
	  return $uploadField;
	}
  }
  
  //获取文件的路径
  public function getfilepath($path = ''){
	$path    = config('upload_path').'images/'.$path;
	$objfile = array();
	$handle  = opendir($path);
	$dwsArr  = array ('.','..');
	$j       = 0;
    while (($file = readdir($handle))!==false) {
		if (!in_array($file,$dwsArr)) {	
		  $objfile[$j]['file']  = $file;
		  $objfile[$j]['count'] = $this->filecount($path.$file.'/');
		  $j++;	
		}
	}
	closedir($handle);
	rsort($objfile);
	return $objfile;
  }
  
  //获取文件
  public function getpic($spath = '',$page = 1){
	$sdata    = array();
	$ispath   = ($spath == '') ? false : true;
	$path     = config('upload_path').'images/'.$spath;
	$data     = $this->getarrays($path);
	$count    = count($data);
	$pageS    = 15;
	$pobj     = new \page\AjaxPage($count,$pageS,$page);
	$start    = explode(",",$pobj->limit);
	$start    = isset($start[0]) ? $start[0] : 0;
	$pagesize = ($count>=$pageS*$page) ? $pageS*$page : $count;
	for($i=$start;$i<$pagesize;$i++){
	  $spic              = ($ispath) ? $spath.'/'.str_replace($path.'/',"",$data[$i]) : str_replace($path.'/',"",$data[$i]);
	  $showpic           = explode("/",$spic);
	  $showpic           = (isset($showpic[count($showpic)-1])) ? $showpic[count($showpic)-1] : '';
	  $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($data[$i]));
	  $sdata[$i]['spic'] = $spic;
	  $sdata[$i]['pic']  = $showpic; 
	}
	$pageshow = ($count > $pageS) ? $pobj->showpage() : '';
	return array('count'=>$count,'sdata'=>$sdata,'pagelist'=>$pageshow);
  }
  private static $filepath = array();	
  private function getfile($path){
	global $filepath;
	foreach(scandir($path) as $afile){
	  if($afile == '.' || $afile == '..') continue; 
	   if(is_dir($path.'/'.$afile)) { 
		  $this->getfile($path.'/'.$afile);
	   } else { 
		  $filepath[]=$path.'/'.$afile;
	   } 
	 } 
  }
  private function getarrays($path){
	global $filepath;
	$this->getfile($path);
	return  $filepath;
  }  
  //文件数量
  private function filecount($path){
    $handle = opendir($path);
	$f = 0;
	$dwsArr  = array ('.','..');
	while (($file = readdir($handle)) !== false) {
	  if (!in_array($file,$dwsArr)) $f++;
	  
	}
	closedir($handle);
	($f==0) ? @rmdir($path) : '';
	return $f;
  }
  
  //文件上传
  public function fileupload($act = '',$uploadType=''){
    $data    = $this->uploadSet();
	$exts    = ($data['filesuffix']!='') ? explode(',',$data['filesuffix']) : '';
	$maxSize = ($data['filesize']) ? intval($data['filesize'])*1024 : 1024*1024*1024*10;
	if ( $act == 'editor' ) {
	  $fname = './public/kindedit/attached/';
	  if ( !file_exists($fname.$uploadType) ) mkdir($fname.$uploadType);
	  $fname = $fname.$uploadType.'/';
	} else {
	  $fname = config('upload_path').'files/';
	}
	$dpath      = date('Ymd');
	$movepath   = ROOT_PATH . $fname;
	$uploadname = ($act == '') ? 'Filedata' : 'imgFile';
	$validate   = array('size'=>$maxSize,'ext'=>$exts);
	$file       = request()->file($uploadname);
	$info       = $file->rule('uniqid')->validate($validate)->move($movepath.'/'.$dpath);
	if ($info) {
	  return array('file'=>$dpath.'/'.$info->getSaveName(),'error'=>'');
	} else {
	  return array('file'=>'','error'=>$file->getError());
	} 
  }
  
  //编辑器上传
  public function editorUpload(){
    $uploadType = input('dir');
	if ( $uploadType == 'image' ) {
	  $result = $this->picupload('editor');
	} else {
	  $result = $this->fileupload('editor',$uploadType);
	}
	$abfile   =  root().'/public/kindedit/attached/'.$uploadType.'/'; 
	if ( $result['error']!='' ) {
	  return array('error'=>1,'message'=>$result['error'],'url'=>'');
	} else {
	  return array('error'=>0,'message'=>'','url'=>$abfile.$result['file']);
	}
  }
  
}
