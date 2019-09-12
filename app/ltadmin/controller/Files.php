<?php
namespace app\ltadmin\controller;

class Files extends Common {

  public function picupload(){
	return json(model('File')->picupload());
  } 

  public function fileupload(){
	return json(model('File')->fileupload());
  } 
  
  public function editorUpload(){
    return json(model('File')->editorUpload());
  }
  
  public function meituxiuxiu(){
	$act = input('act','');
	if ( $act == '' ) {
	  $uploadurl  = 'http://'.$_SERVER['SERVER_NAME'].dirname($_SERVER['REQUEST_URI']).'/picupload.html';
	} else {
	  $uploadurl  = 'http://'.$_SERVER['SERVER_NAME'].dirname(dirname(dirname($_SERVER['REQUEST_URI']))).'/picupload.html';
	}
	return $this->fetch('meituxiuxiu',['title'=>'美图秀秀图片处理','act'=>$act,'uploadurl'=>$uploadurl]);
  }
  
  public function bhmap(){
	return $this->fetch('',['title'=>'百度地图在线制作']);
  }
  
  public function bhtpl(){
	if ( !request()->isAjax() ) return json(array('state'=>0,'msg'=>'非法操作'));
    $type = input('post.id',1,'intval');
	return json(array('state'=>1,'html'=>model('Bhtpl')->gettpl($type)));
  }
  
  public function wxarticle(){
	if ( !request()->isAjax() ) return json(array('state'=>0,'msg'=>'非法操作'));
	$uri   = input('post.url','');
	if ( $uri == '' ) return json(array('state'=>0,'topic'=>'','content'=>''));
    $html  = file_get_contents($uri); //
	$html  = str_replace("<!--headTrap<body></body><head></head><html></html>-->", "", $html);  
	$title = $content = $author = '';
	$state = true;
	if ( $html != '' ) {
	  $ql      = new \ql\QueryList;
	  $data    = $ql::Query($html,array('titleTag' => array('title','text'),'author' => array('#post-user','text'), 'contentWx' => array('#js_content','html'),'imageWx' => array('img','data-src')))->data;
	  $title   = ($data!='' && isset($data[0]['titleTag']))  ? $data[0]['titleTag']  : '';
	  $content = ($data!='' && isset($data[0]['contentWx'])) ? $data[0]['contentWx'] : '';
	  $author  = ($data!='' && isset($data[0]['author']))    ? $data[0]['author']    : '';
	  foreach( $data as $key=>$val ) {
	    if ($val['imageWx'] != ''){
		  $pic = $this->downpic($val['imageWx']);
		  if ( $pic != '' ) {
			$pic =  root().'/public/kindedit/attached/image/'.$pic; 
		    $content = str_replace('data-src="'.$val['imageWx'].'"','src="'.$pic.'"',$content);
		  }
		  $content = str_replace('width: 100%; ',"",$content);
		}
	  }
	} else {
	  $state = false;
	}
	return json(array('state'=>$state,'topic'=>$title,'content'=>$content,'author'=>$author));
  }
  
  //检测敏感词
  public function ckillegalword(){
    if ( !request()->isAjax() ) return json(array('state'=>0,'msg'=>'非法操作'));
	$content = input('post.content','');
	if ( $content == '' ) return json(array('state'=>0,'msg'=>'请输入检测内容！'));
	vendor("topthink.think-illegalword.illegalword");
	$word   = BH_ILLEGALWORD;
	if ( $word == '' )  return json(array('state'=>0,'msg'=>'无敏感词词库，请完善敏感词库！'));
	$ill    = '';
	$illarr = array();
	$word = explode('|',$word);
    foreach( $word as $wv ) {
	  $content = str_ireplace($wv,'<a href="#">'.$wv.'</a>',$content);
    }
	$illreg = "/<a .*?>.*?<\/a>/";
	preg_match_all($illreg,$content,$illarr);
	if ( count( $illarr[0] ) > 0 ) {
	  foreach( $illarr[0] as $ikey=>$ival ) {
	    $illstr = $ival;
		$illstr = str_ireplace('<a href="#">','[',$illstr);
		$illstr = str_ireplace('</a>',']',$illstr);
		$ill   .= $illstr;
	  }
	  return json(array('state'=>2,'msg'=>'检测到'.count($illarr[0]).'个敏感词，'.$ill));
	} else {
	  return json(array('state'=>1,'msg'=>'检测成功，未检测到任何敏感词！'));
	}
  }
  
  //删除敏感词
  public function illegalword(){
    if ( !request()->isAjax() ) return json(array('state'=>0,'msg'=>'非法操作'));
	$content = isset($_POST['content']) ? trim($_POST['content']) : '';
	if ( $content == '' ) return json(array('state'=>0,'msg'=>'请输入检测内容！'));
	vendor("topthink.think-illegalword.illegalword");
	$word = BH_ILLEGALWORD;
	if ( $word == '' )  return json(array('state'=>0,'msg'=>'无敏感词词库，请完善敏感词库！'));
	$word = explode('|',$word);
    foreach( $word as $wv ) {
	  $content = str_ireplace($wv,'**',$content);
    }
	return json(array('state'=>1,'html'=>$content));
  }
  
  
  private function downpic($url=''){
	if ( $url == '' ) return false;
	$path = dirname(THINK_PATH).'/public/kindedit/attached/';
	$date = date('Ymd');
	if ( !is_dir( $path.'image' ) ) {
	  @mkdir ( $path.'image', 0777, true );
	}
	if ( !is_dir( $path.'image/'.$date ) ) @mkdir ( $path.'image/'.$date, 0777, true );
	$file = substr(md5(substr(md5(time().rand(0,9999999)),5,15)),8,15).'.jpg';
	$savepath = $path.'image/'.$date.'/'.$file;
	$ch = curl_init($url);
	curl_setopt($ch, CURLOPT_HEADER, 0);    
	curl_setopt($ch, CURLOPT_NOBODY, 0);    //只取body头
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	$package = curl_exec($ch);
	$httpinfo = curl_getinfo($ch);
	curl_close($ch);
	if( $httpinfo['http_code']==200){
	   $local_file = fopen($savepath, 'w');
	   if(false !== $local_file){
		  if(false !== fwrite($local_file,$package)) { fclose($local_file);}
	   }
	   if(file_exists($savepath)){
		 return $date.'/'.$file;
	   }else{
		 return false;
	   }
	} else {
	  return false;
	}
  }
  

}