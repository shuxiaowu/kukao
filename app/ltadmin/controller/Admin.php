<?php
namespace app\ltadmin\controller;
use think\Db;

class Admin extends Common {

  public function switchtab(){
	if (request()->isAjax()) {
	  $tabid = input('post.id',1,'intval');
	  session('topmenuid',$tabid);
	  return json(['state'=>1,'msg'=>'']);
	} else {
	  return json(['state'=>0,'msg'=>'非法操作']);
	}
  }
  
  //修改属性
  public function modattr(){
    $tables = input('post.tables','');
    $field  = input('post.field','');
    $id     = input('post.id',0,'intval');
    $val    = input('post.val','');
    if($tables!='' && $field!='' && $id!=0){
	 $dobj  = Db::name($tables);
	 if( $val!='' ){
	   $val    = intval($val);
	   $result = $dobj->where(array('Id'=>$id))->update(array($field=>$val));
	 } else {
	    $data = $dobj->field($field)->where(array('Id'=>$id))->find();
	    if( $data[$field]==1 ){
	      $result = $dobj->where(array('Id'=>$id))->update(array($field=>0));
	    } else {
	      $result = $dobj->where(array('Id'=>$id))->update(array($field=>1));
	    }
	  }
	  return json($result);
    }
  } 
  
  //获取栏目
  public function getMenu(){
    if (request()->isAjax()) {
	  $id = input('post.id',0,'intval');
	  if ( $id ) {
	     $data = Db::name('adminauth')->field('title,Id')->where('1=1 AND tid='.$id)->order('ord ASC')->select();
	     if ($data) {
		   $str = '';
		   foreach ($data as $key=>$val) {
		     $str .= '<a href="javascript:void(0)" class="btn-menu" data-id="'.$val['Id'].'">'.btn(array('vals'=>$val['title'],'size'=>3,'scene'=>'default')).'</a>&nbsp;';
		   }
		   return json($str);
		 } else {
		   return json('');
		 }
	  }
	}
  }
  
  //修改字段
  public function modField(){
    if (request()->isAjax()) {
	  $tables = input('post.tables','');
	  $field  = input('post.field','');
	  $id     = input('post.id',0,'intval');
	  $val    = input('post.val','');
	  if( $tables!='' && $field!='' && $id!=0 ){
		if($val!=''){
		  $result = Db::name($tables)->where(array('Id'=>$id))->update(array($field=>$val));
		  return json($result);
		} else {
		  return json(0);
		}
	  } else {
	    return json(0);
	  }
	}
  }
  
  //搜索数据
  public function searchField(){
    if (request()->isAjax()) {
	  $tables   = input('post.tables','');
	  $field    = input('post.field','');
	  $sfield   = input('post.sfield','');
	  $kwd      = input('post.key','');
	  $addshow  = input('post.addshow','');
	  $addfield = ($addshow!='') ? ','.$addshow : '';
	  if ( $tables == '' || $field == '' ) return json(0);
	  if ( $kwd!='' ) {
		if ( $sfield == '' ) return json(0);
		$sArr = explode(",",$sfield);
		$where = '';
		foreach( $sArr as $k=>$v ) {
		  $where .= " OR $v LIKE '%".$kwd."%'";
		}
		$where = ($where!='') ? substr($where,3,strlen($where)) : '';
	  } else {
		$where = '1=1';
	  }
	  $data = Db::name($tables)->field("Id,".$field.$addfield)->where($where)->order('Id ASC')->limit(50)->select();
	  if ( !$data ) return json(0);
	  $str = '';
	  foreach( $data as $key=>$val ) {
		$fields = ($addshow != '' && $val[$addshow]!='') ? ' | '.$val[$addshow] : '';
		$sdata  = ($kwd!='') ? str_replace($kwd,'<font color="red">'.$kwd.'</font>',$val[$field]) : $val[$field];
		$str   .= '<li class="active-result" data-id="'.$val['Id'].'">'.$sdata.$fields.'</li>';
	  }
      return json($str);
	}
  }
  
  //修改排序
  public function modord(){
    $tables = input('post.tables','');
    $ord    = input('post.ord',0,'intval');
    $id     = input('post.id',0,'intval');
    if( $tables!='' && $id!=0 ){
	  $result = Db::name($tables)->where("Id",$id)->update(array('ord'=>$ord));
	  return json($result);
    }
  }
  
  //修复 优化 数据表
  public function setdata(){
    $acts   = input('post.acts','');
    $tables = input('post.tables','');
	$tables = ($tables!='') ? str_replace(config('database.prefix'),'',$tables) : '';
    if( $acts == 'opt' ){
      Db::query("OPTIMIZE TABLE `$tables`"); //优化
	  return json(1);
    } else if ( $acts == 'repair' ){
      Db::query("REPAIR TABLE `$tables`"); //修复
	  return json(1);
    } else {
      return json(0);
    }
  }
  
  //检测用户是否存在
  public function ckuser(){
    $user = input('post.user','');
	if($user != '') return json(model("AdminUser")->ckuser($user));  
  }
   //检测用户是否存在
   public function ckvip(){
    $user = input('post.user','');
	if($user != '') return json(model("AdminUser")->ckvip($user));  
  }
  //下拉联动
  public function droplinks(){
	$tables  = input('post.tables','');
	$tables2 = input('post.tables2','');
	$field   = input('post.field','');
	$field2  = input('post.field2','');
	$id      = input('post.id',0,'intval');
	if ( $tables!='' && $field!='' && $id!=0 ){
	  $data = Db::name($tables)->field('Id,topic')->where(array($field=>$id))->order('ord ASC')->select();
	  if( $data ){
		$str = '';
		foreach( $data as $key=>$val ){
		  $str .= '<li><a href="javascript:void(0)" data-id="'.$val['Id'].'" data-tables="'.$tables2.'" data-field="'.$field2.'"" class="menu-li2">'.$val['topic'].'</a></li>';
		}
		return json($str);
	  } else {
		return json('<li><a href="javascript:void(0)">没有数据</a></li>');
	  }
	}
  }
  
  //3级联动
  public function droplinks2(){
    $tables = input('post.tables','');
    $field  = input('post.field','');
    $id     = input('post.id',0,'intval');
    if( $tables!='' && $field!='' && $id!=0 ){
      $data = Db::name($tables)->field('Id,topic')->where(array($field=>$id))->order('ord ASC')->select();
	  if( $data ){
	    $str = '';
        foreach($data as $key=>$val){
	      $str .= '<li><a href="javascript:void(0)" data-id="'.$val['Id'].'" class="menu-li3">'.$val['topic'].'</a></li>';
	    }
	    return json($str);
	  } else {
	    return json('<li><a href="javascript:void(0)">没有数据</a></li>');
	  }
    }
  }
  
  //裁剪
  public function croppic(){
    if ( request()->isAjax() ) {
      $w       = input('post.w',0,'intval');
 	  $h       = input('post.h',0,'intval');
	  $x       = input('post.x',0,'intval');
	  $y       = input('post.y',0,'intval');
      $r       = input('post.r',0,'intval');
	  $path    = input('post.path','');
	  $iswater = input('post.iswater',0,'intval');
	  $delpic  = input('post.delpic',0,'intval');
	  if ( $path == '' ) return json(array('state'=>0,'msg'=>'请上传裁剪的图片'));
	  if ( $w == 0 || $h == 0 ) return json(array('state'=>0,'msg'=>'裁剪的宽度和高度不能为0px'));
	  $rdata = model("File")->croppic(array('x'=>$x,'y'=>$y,'w'=>$w,'h'=>$h,'r'=>$r,'iswater'=>$iswater,'path'=>$path,'delpic'=>$delpic));
      return json($rdata);
    }
  }
  
  public function getpiclist(){
    if ( request()->isAjax() ) {
      $page = input('post.page',1,'intval');
	  $path = input('post.path','');
	  $data = model('File')->getpic($path,$page);
	  $html = '';
	  if ( $data['count'] > 0 ) {
	    foreach( $data['sdata'] as $pkey=>$pval ) {
          $html .= ($pval['spic']!='') ? '<div class="picdiv picture-fname" data-path="'.$pval['spic'].'"><img src="'.ispic($pval['spic']).'" data-action="zooms"><p title="'.$pval['pic'].'">'.$pval['pic'].'</p><div class="pic-active"></div></div>' : '';
        }
	  }
	  return json(array('msg'=>'','state'=>1,'html'=>$html,'pagelist'=>$data['pagelist']));
    } else {
      return json(array('msg'=>'非法调用','state'=>0));
    }
  }
  
  public function lockscreen(){
    if (request()->isAjax()) {
	  $adminAuth = session('adminauth');
	  session('lockrealname',$adminAuth['adminrealname']);
	  session('lockuser',$adminAuth['adminuser']);
	  return json(1);
    } else {
	  $this->error('非法操作');
    }
  }
 
  public function backtables(){
    if ( request()->isAjax() ) {
      $isbackup = model('Baksql')->backAuto();
	  if ( $isbackup ) {
	    return json(array('msg'=>'','state'=>1));
	  } else {
	    return json(array('msg'=>'自动备份失败，请点击系统设置->数据库备份手动备份数据吧~','state'=>0));
	  }
    } else {
      return json(array('msg'=>'非法调用','state'=>0));
    }
  }
  
  public function tabstate(){
    if ( request()->isAjax() ) {
      $tablist = model('Baksql')->getTables();
	  $tab     = array();
	  if ( count( $tablist ) ) {
	    foreach( $tablist as $tval ) {
	      if ( cache('backtable'.$tval) ) $tab[] = $tval;
	    }
	  }
	  return json(array('msg'=>'','state'=>1,'tabdata'=>$tab));
    } else {
      return json(array('msg'=>'非法调用','state'=>0));
    }
  }
  
  //获取TDK
  public function ajaxTdk(){
    if ( request()->isAjax() ) {
      $id     = input('post.id',0,'intval');
	  $tables = input('post.tables','');
	  $data   = Db::name('title')->field('*')->where(array('tid'=>$id,'tables'=>$tables))->find();
	  if ( $data ) {
	    return json(array('msg'=>'','state'=>1,'data'=>$data));
	  } else {
	    return json(array('msg'=>'无相关数据。','state'=>0));
	  }
    } else {
      return json(array('msg'=>'非法调用','state'=>0));
    }
  }
  
  //更新TDK
  public function updateTdk(){
    if ( request()->isAjax() ) {
      $id       = input('post.id',0,'intval');
	  $tables   = input('post.tables','');
	  $title    = input('post.title','');
	  $keyword  = input('post.keyword','');
	  $des      = input('post.des','');
	  $data     = Db::name('title')->field('*')->where(array('tid'=>$id,'tables'=>$tables))->find();
	  if ( $data ) {
	    $result = Db::name('title')->where(array('Id'=>$data['Id']))->update(array('title'=>$title,'keyword'=>$keyword,'metades'=>$des,'date'=>dates()));
	  } else {
	    $result = Db::name('title')->insert(array('tid'=>$id,'tables'=>$tables,'title'=>$title,'keyword'=>$keyword,'metades'=>$des,'date'=>dates()));
	  }
	  if ( $result ) {
	    return json(array('msg'=>'','state'=>1));
	  } else {
	    return json(array('msg'=>'更新失败~','state'=>0));
	  }
    } else {
      return json(array('msg'=>'非法调用','state'=>0));
    }
  }
 
 
}