<?php
namespace app\ltadmin\controller;
use think\Db;

class System extends Common{
  
  public function index(){
    return false;
  }
  
  public function sysmod(){
	$save   = input('post.send','');
	$data   = Db::name("systemconfig")->field('*')->where("Id",1)->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
	if ( $save == '' ){
	  return $this->fetch('',['activeid'=>12,'title'=>'系统设置','data'=>$data]);
	} else if($save=='确定保存') {
	  $metatitle   = input('post.metatitle','');
	  $icpnote     = input('post.icpnote','');
	  $metades     = input('post.metades','');
	  $metakey     = input('post.metakey','');
	  $sys_notice  = input('post.sys_notice','');
	  $sys_code    = cg('sys_code');
	  $c_site      = input('post.c_site',0,'intval');
	  $c_text      = input('post.c_text','');
	  $isonline    = input('post.isonline',0,'intval');
	  $isqq        = input('post.isqq',0,'intval');
	  $adminpage   = input('post.adminpage',15,'intval');
	  $adminpage   = ($adminpage<1) ? 1 : $adminpage;
	  $result      = Db::name("systemconfig")->where("Id",1)->update(array('metatitle'=>$metatitle,'icpnote'=>$icpnote,'metades'=>$metades,'metakey'=>$metakey,'sys_notice'=>$sys_notice,'sys_code'=>$sys_code,'c_site'=>$c_site,'c_text'=>$c_text,'isonline'=>$isonline,'isqq'=>$isqq,'adminpage'=>$adminpage));
	  if( $result ){
	    $this->success('资料更新成功');
	  } else {
	    $this->error('资料更新失败，请重新试试吧');
	  }
	}
  }
  
  public function syscompany(){
	$save   = input('post.send','');
	$data   = Db::name("systemconfig")->field('*')->where("Id",1)->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
	if ( $save == '' ){
	  return $this->fetch('',['activeid'=>12,'upload'=>true,'title'=>'公司设置','data'=>$data]);
	} else if($save=='确定保存'){
	  $companyname = input('post.companyname','');
	  $address     = input('post.address','');
	  $weibourl    = input('post.weibourl','');
	  $tel         = input('post.tel','');
	  $fax         = input('post.fax','');
	  $qq          = input('post.qq','');
	  $email       = input('post.email','');
	  $mobile      = input('post.mobile','');
	  $contact     = input('post.contact','');
	  $wxqpic     = input('post.wxqpic','');
	  $weixinpic   = input('post.pic2','');
	//   dump($_POST);exit;
	  $result      = Db::name("systemconfig")->where("Id",1)->update(array('wxqpic'=>$wxqpic,'weixinpic'=>$weixinpic,'companyname'=>$companyname,'address'=>$address,'weibourl'=>$weibourl,'tel'=>$tel,'fax'=>$fax,'mobile'=>$mobile,'contact'=>$contact,'email'=>$email,'qq'=>$qq));
	  if( $result ){
	    $this->success('资料更新成功');
	  }else{
	    $this->error('资料更新失败，请重新试试吧');
	  }
	}
  }
  
  public function syswater(){
	$save   = input('post.send','');
	$data   = Db::name("systemconfig")->field('*')->where("Id",1)->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
	if ( $save=='' ){
	  $facearr = array('A','B','C','D','E','F','G','H');
	  return $this->fetch('',['activeid'=>12,'facetitle'=>'字体'.$facearr[$data['facetype']],'upload'=>true,'color'=>true,'title'=>'水印设置','data'=>$data]);
	} else if($save=='确定保存'){
	  $pic         = input('post.pic','');
	  $waterpos    = input('post.waterpos',9,'intval');
	  $fonttext    = input('post.fonttext','');
	  $fontsize    = input('post.fontsize',20,'intval'); 
	  $fontcolor   = input('post.fontcolor','');
	  $wateralpha  = input('post.wateralpha',1,'intval');
	  $fontpos     = input('post.fontpos',9,'intval');
	  $iswater     = input('post.iswater',0,'intval'); 
	  $facetype    = input('post.facetype',0,'intval');  
	  $facetype    = ($facetype>7) ? 7 : $facetype;
	  $result      = Db::name("systemconfig")->where("Id",1)->update(array('waterpos'=>$waterpos,'wateralpha'=>$wateralpha,'fonttext'=>$fonttext,'fontsize'=>$fontsize,'fontcolor'=>$fontcolor,'facetype'=>$facetype,'fontpos'=>$fontpos,'iswater'=>$iswater,'waterpic'=>$pic));
	  if( $result ){
	    $this->success('数据更新成功');
	  }else{
	    $this->error('数据更新失败，请重新试试吧');
	  }
	} 
  }
  
  public function sysupload(){
    $save   = input('post.send','');
	$data   = Db::name("systemconfig")->field('*')->where("Id",1)->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
	if ($save == '') {
	  return $this->fetch('',['activeid'=>12,'title'=>'上传设置','data'=>$data]);
	} else if ($save == '确定保存') {
	  $picsuffix    = input('post.picsuffix','',null);
	  $filesuffix   = input('post.filesuffix','',null);
	  $picsize      = input('post.picsize',0,'intval');
	  $filesize     = input('post.filesize',0,'intval');
	  $picmaxwidth  = input('post.picmaxwidth',0,'intval');
	  $cropwidth    = input('post.cropwidth',0,'intval');
	  $picmaxsize   = input('post.picmaxsize',0,'intval');
	  $result       = Db::name("systemconfig")->where('Id',1)->update(array('picsuffix'=>$picsuffix,'filesuffix'=>$filesuffix,'filesize'=>$filesize,'picmaxwidth'=>1920,'cropwidth'=>$cropwidth,'picsize'=>$picsize,'picmaxsize'=>1920));
	  if( $result ){
	    $this->success('上传设置更新成功');
	  }else{
	    $this->error('上传设置更新失败，请重新试试吧');
	  }
	}
  }
  
  public function ipfilter(){
	$save   = input('post.send','');
	if( $save=='' ){
	  $data   = Db::name("systemconfig")->field('shieldip,iptips')->where('Id',1)->find();
	  if ( !$data ) $this->error('资料不存在，请重新操作！');
	  return $this->fetch('',['title'=>'IP过滤设置','data'=>$data]);
	} else if($save=='确定保存') {
	  $shieldip = input('post.shieldip','');  
	  $iptips   = input('post.iptips',''); 
	  $dobj     = Db::name("systemconfig")->where('Id',1)->update(array('shieldip'=>$shieldip,'iptips'=>$iptips));
	  if( $dobj ){
		$this->success('数据更新成功');
	  } else {
	    $this->error('数据更新失败，请重新试试吧');
	  }
	} 
  }
  
  public function admindepartment(){
	$this->pageDisplay(array('title'=>'部门管理列表','tables'=>'admindepartment','order'=>'ord ASC'));
	return view();
  }  
  
  public function admindepartmentadd(){
	$topmenu = Db::name('adminauth')->field('Id,title,isimportant')->where('1=1 AND tid=0')->order('ord ASC')->select();
	if ($topmenu) {
	  foreach($topmenu as $key=>$val) {
	    $topmenu[$key]['mdata'] = Db::name('adminauth')->field('Id,title,isimportant')->where('1=1 AND tid='.$val['Id'])->order('ord ASC')->select();
	  }
	}
	return $this->fetch('',['activeid'=>77,'title'=>'添加管理部门','adminauths'=>$topmenu]);
  }
  
  public function createdepartment(){
	$topic    = input('post.topic','');
	$ord      = input('post.ord','');
	$auth     = isset($_POST['auth']) ? $_POST['auth'] : array();
	$userauth = '';
	if (count($auth) > 0) {
	  foreach ($auth as $key=>$val) {
	    $userauth .= $val.',';
	  }
	}
	$userauth = ($userauth!='') ? trim($userauth,',') : '';
	if( $topic!='' ){
	  $res = Db::name('admindepartment')->insert(array('topic'=>$topic,'auth'=>$userauth,'ord'=>$ord,'date'=>dates()));
	  if( $res ){
	    $this->success('部门添加成功',url('system/admindepartment'));
	  } else {
	    $this->success('部门添加失败，请重试',url('system/admindepartmentadd'));
	  }
	} else {
	  $this->error('请先完善部门信息',url('system/admindepartmentadd'));
	}
  }
  
  public function admindepartmentmod(){
    $id   = input('id',0,'intval');
	$save = input('post.send','');
    if ( !$id ) $this->error('ID未指定,无法获取任何数据');
	if ( $save == '' ){
	  $data  = Db::name("admindepartment")->field('*')->where(array('Id'=>$id))->find();
	  if( !$data ) $this->error('资料不存在，请重新操作！');
	  $topmenu = Db::name('adminauth')->field('Id,title,isimportant')->where('1=1 AND tid=0')->order('ord ASC')->select();
	  if ($topmenu) {
		foreach($topmenu as $key=>$val) {
		  $topmenu[$key]['mdata'] = Db::name('adminauth')->field('Id,title,isimportant')->where('1=1 AND tid='.$val['Id'])->order('ord ASC')->select();
		}
	  }
      return $this->fetch('',['activeid'=>77,'title'=>'部门编辑','data'=>$data,'adminauths'=>$topmenu]);
	} else if($save=='确定修改'){
	  $topic    = input('post.topic','');
	  $ord      = input('post.ord','');
	  $auth     = isset($_POST['auth']) ? $_POST['auth'] : array();
	  $userauth = '';
	  if (count($auth) > 0) {
		foreach ($auth as $key=>$val) {
		  $userauth .= $val.',';
		}
	  }
	  $userauth = ($userauth!='') ? trim($userauth,',') : '';
	  $result = Db::name("admindepartment")->where(array('Id'=>$id))->update(array('ord'=>$ord,'topic'=>$topic,'auth'=>$userauth,'date'=>dates()));
	  if($result){
	    cache('admintopmenu',null);
	    $this->success('数据更新成功');
	  } else {
		$this->error('数据更新失败，请重新试试吧');
	  } 
    }
  }
  
  public function userlist(){
	$this->pageDisplay(array('title'=>'管理员列表','tables'=>'adminuser','order'=>'last_time DESC'));
	return view();
  }
  
  public function usermod(){
    $id   = input('id',0,'intval');
	$save = input('post.send','');
	if ( !$id ) $this->error('ID未指定,无法获取任何数据');
	$data  = Db::name("adminuser")->field('*')->where(array('Id'=>$id))->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
	if ( $save == '' ){	
	  return $this->fetch('',['activeid'=>20,'title'=>'用户编辑','data'=>$data,'admindep'=>$this->getSelect('admindepartment')]);
	} else if($save=='确定修改'){
	  $pass   = input('post.pass','');
	  $name   = input('post.name','');
	  $depid  = input('post.depid',0,'intval');
	  $result = Db::name("adminuser")->where(array('Id'=>$id))->update(array('realname'=>$name,'depid'=>$depid,'last_time'=>dates()));
	  if($result){
		if ($pass!='') model('AdminUser')->modpass($pass,$id);
	    $this->success('数据更新成功');
	  } else {
		$this->error('数据更新失败，请重新试试吧');
	  } 
	}
  }
  
  public function useradd(){
	return $this->fetch('',['activeid'=>20,'title'=>'添加管理员','admindep'=>$this->getSelect('admindepartment')]);
  }
  
  public function createuser(){
	$user  = input('post.user','');
	$pass  = input('post.pass','');
	$name  = input('post.name','');
	$depid = input('post.depid',0,'intval');
	if($user!='' && $pass!='' && $name!=''){
	  if( model("AdminUser")->adduser($user,$pass,$name,$depid) ){
	    $this->success('管理员添加成功',url('system/userlist'));
	  } else {
	    $this->success('管理员添加失败，请重试',url('system/useradd'));
	  }
	} else {
	  $this->error('请先完善管理员信息',url('system/useradd'));
	}
  }
  
  public function adminauth(){
    $this->pageDisplay(array('title'=>'权限控制','tables'=>'adminauth','where'=>'1=1 AND tid=0','order'=>'isimportant DESC,ord ASC,Id DESC'));
	return view();
  }
  
  public function adminauthadd(){
	$send  = input('post.send','');
	if( $send == "" ){
	  $menu = Db::name('adminauth')->field('Id,title AS topic')->where('tid=0')->select();
	  return $this->fetch('',['activeid'=>19,'title'=>'添加控制权限','topmenu'=>$menu]);	  
	} else if($send == "添加栏目"){
	  $title       = input('post.title','');
	  $icon        = input('post.icon','');
	  $linkurl     = isset($_POST['linkurl']) ? trim($_POST['linkurl']) : '';
	  $pid         = input('post.pid',0,'intval');
	  $mpid        = input('post.mpid',0,'intval');
	  $ord         = input('post.ord',0,'intval');
	  $isopen      = input('post.isopen',0,'intval');
	  $isext       = input('post.isext',0,'intval');
	  $isspecial   = input('post.isspecial',0,'intval');
	  $isimportant = input('post.isimportant',0,'intval');
	  if ($mpid == 2)  $pid = input('post.lid',0,'intval');
	  $name = $martables = $tables = '';
	  $sty  = 1;
	  if( $linkurl !='' ) {
	    $mlink = explode(",",$linkurl);
		$name   = (isset($mlink[0]) && $mlink[0]!='') ? $mlink[0] : '';
		$fields = (isset($mlink[1]) && $mlink[1]!='') ? $mlink[1] : '';
		if ($fields!='') {
		  $fields = explode("&",$fields);
		  if( count($fields) > 0) {
		    foreach($fields as $mval) {
			  if ($mval!='') {
			    $vArr = explode("=",$mval);
			  }
			  if ($vArr[0] == 'martables'){
			 	$martables = (isset($vArr[1]) && $vArr[1]!='') ? trim($vArr[1]) : '';
			  }
			  if ($vArr[0] == 'tables'){
				$tables = (isset($vArr[1]) && $vArr[1]!='') ? trim($vArr[1]) : '';
			  }
			  if ($vArr[0] == 'sty'){
				$sty = (isset($vArr[1]) && $vArr[1]!='') ? intval($vArr[1]) : 1;
			  }
			}
		  }
		}
		
	  }
	  $result = Db::name("adminauth")->insert(array('title'=>$title,'name'=>$name,'icon'=>$icon,'isext'=>$isext,'sty'=>$sty,'isopen'=>$isopen,'isspecial'=>$isspecial,'martables'=>$martables,'tables'=>$tables,'linkurl'=>$linkurl,'ord'=>$ord,'isimportant'=>$isimportant,'tid'=>$pid,'date'=>dates()));
	  if( $result ){
	    $this->success('权限添加成功');
	  } else {
	    $this->error('权限添加失败，请重新试试吧');
	  } 
	}
  }
  
  //编辑权限
  public function adminauthmod(){
    $id   = input('id',0,'intval');
	$save = input('post.send','');
	if ( !$id ) $this->error('ID未指定,无法获取任何数据');
    if ( $save == "" ){   
      $data  = Db::name("adminauth")->field('*')->where(array('Id'=>$id))->find();
	  if( !$data ) $this->error('资料不存在，请重新操作！');
	  $mpid    = 1;
	  $lid     = 0;
	  $mtopic  = '';
	  $mlist   = '';
	  $topmenu = Db::name('adminauth')->field('Id,title AS topic')->where('tid=0')->select();
	  if ($data['tid'] == 0) {
		$mpid = 1;
	  } else {
		$mtopic = $this->gettopic('adminauth',$data['tid'],'title');
		if ($topmenu){
		  foreach ($topmenu as $t=>$v) {
			if ($v['Id'] == $data['tid']) $mpid = 2;
		  }
		}
		$lid = $data['tid'];
		if ($mpid!=2) $mpid = 3;
		$mlist = '';
		if ( $mpid == 3 ) {
		  $tid    = $this->gettopic('adminauth',$data['tid'],'tid');
		  $mtopic = $this->gettopic('adminauth',$tid,'title');
		  $lid    = $tid;
		  $mdata  = Db::name('adminauth')->field('title,Id')->where('1=1 AND isspecial=0 AND tid='.$tid)->order('ord ASC')->select();
		  if ($data) {
			foreach ($mdata as $key=>$val) {
			  $scene = ($val['Id'] == $data['tid']) ? 'success' : 'default';
			  $mlist .= '<a href="javascrupt:void(0)" class="btn-menu" data-id="'.$val['Id'].'">'.btn(array('vals'=>$val['title'],'size'=>3,'scene'=>$scene)).'</a>&nbsp;';
			}
		  }
		}
	  }
	  return $this->fetch('',['activeid'=>19,'mtopic'=>$mtopic,'lid'=>$lid,'mpid'=>$mpid,'title'=>'编辑权限信息','data'=>$data,'mlist'=>$mlist,'topmenu'=>$topmenu]);	 
	}
	if( $save == '保存栏目' ){
	  $title   = input('post.title','');
	  $icon    = input('post.icon','');
      $linkurl = isset($_POST['linkurl']) ? trim($_POST['linkurl']) : '';
  	  $pid     = input('post.pid',0,'intval');
	  $mpid    = input('post.mpid',0,'intval');
	  $ord     = input('post.ord',0,'intval');
	  $isopen  = input('post.isopen',0,'intval');
	  $isext   = input('post.isext',0,'intval');
	  $isspecial = input('post.isspecial',0,'intval');
	  $isimportant = input('post.isimportant',0,'intval');
	  if ($mpid == 2) $pid = input('post.lid',0,'intval');	  
	  $name = $martables = $tables = '';
	  $sty  = 1;
	  if( $linkurl !='' ) {
		$mlink = explode(",",$linkurl);
		$name   = (isset($mlink[0]) && $mlink[0]!='') ? $mlink[0] : '';
		$fields = (isset($mlink[1]) && $mlink[1]!='') ? $mlink[1] : '';
		if ($fields!='') {
		  $fields = explode("&",$fields);
		  if( count($fields) > 0) {
			foreach($fields as $mval) {
			   if ($mval!='') {
				 $vArr = explode("=",$mval);
				 if ($vArr[0] == 'martables'){
					$martables = (isset($vArr[1]) && $vArr[1]!='') ? trim($vArr[1]) : '';
				 }
				 if ($vArr[0] == 'tables'){
					$tables = (isset($vArr[1]) && $vArr[1]!='') ? trim($vArr[1]) : '';
				 }
				 if ($vArr[0] == 'sty'){
					$sty = (isset($vArr[1]) && $vArr[1]!='') ? intval($vArr[1]) : 0;
				 }
			   }
			}
		  }
		}
	  }
	  $result = Db::name("adminauth")->where('Id='.$id)->update(array('title'=>$title,'name'=>$name,'sty'=>$sty,'icon'=>$icon,'isext'=>$isext,'isopen'=>$isopen,'isspecial'=>$isspecial,'martables'=>$martables,'tables'=>$tables,'linkurl'=>$linkurl,'ord'=>$ord,'isimportant'=>$isimportant,'tid'=>$pid,'date'=>dates()));  
	  if( $result ){
		$this->success('数据更新成功');
	  } else {
	    $this->error('数据更新失败，请重新试试吧');
	  } 
	}
  }
  
  public function history(){
	$this->pageDisplay(array('title'=>'系统登录日志','tables'=>'adminrecord','order'=>'date DESC'));
	return view();
  }
  
  public function advlist(){
	$ctag    = input('ctag',0,'intval');
	$enabled = input('enabled', 0,'intval');
	$topic   = input('topic','');
	$where   = '1=1';
	if ( $ctag )         $where .= ' AND ctag='.$ctag;
	if ( $topic!='' )    $where .= " AND topic like'%$topic%'";
	if ( $enabled == 1 ) $where .= ' AND enabled=0';
	if ( $enabled == 2 ) $where .= ' AND enabled=1';
	$this->assign('advtype',$this->getSelect('advtype'));
	$this->pageDisplay(array('title'=>'广告管理','tables'=>'advdata','where'=>$where,'order'=>'ctag ASC,ord ASC'));
	return view();
  }
  
  public function advadd(){
	$send  = input('post.send','');
	if( $send == "" ){
	  return $this->fetch('',['title'=>'广告添加','activeid'=>97,'upload'=>true,'advtype'=>$this->getSelect('advtype')]);
	} else if($send == "提交"){
	  $result = Db::name("advdata")->insert($this->fieldArr(array('linkurl','pic','ctag','remark','picwidth','picheight')));
	  if( $result ){
	    $this->success('广告添加成功');
	  } else {
	    $this->error('广告添加失败，请重新试试吧');
	  } 
	}
  }
  
  public function advmod(){
    $id   = input('id',0,'intval');
	$save = input('post.send','');
	if ( !$id ) $this->error('ID未指定,无法获取任何数据');
	$data  = Db::name("advdata")->field('*')->where(array('Id'=>$id))->find();
	if ( !$data ) $this->error('资料不存在，请重新操作！');
    if ( $save == '' ) {
	  return $this->fetch('',['title'=>'编辑广告信息','activeid'=>97,'upload'=>true,'data'=>$data,'advtype'=>$this->getSelect('advtype')]);
	} else if($save == '确定修改'){
	  $result = Db::name("advdata")->where('Id',$id)->update($this->fieldArr(array('linkurl','ctag','pic','remark','picwidth','picheight')));
	  if( $result ){
		$this->success('数据更新成功');
	  } else {
		$this->error('数据更新失败，请重新试试吧');
	  } 
	}
  }
  
  //数据库管理
  public function databackup(){
	$send = input('post.send','');
	if($send==''){
	  $this->assign('title','数据库备份');
	  if(!$tabarr = cache('tabarr')){
		$dataArr  = array(); 
		$data     = model('Baksql')->getTables();
		if( count($data)>0 ){
		  for($i=0;$i<count($data);$i++){
			$tables               = $data[$i];
			$dataArr[$i]['table'] = $tables;
			$dataArr[$i]['count'] = Db::name(str_replace(config('database.prefix'),'',$tables))->count(); 
		  }
		}
		$tabarr = $dataArr;
		cache('tabarr',$dataArr,3600); //缓存字段信息
	  }
	  return $this->fetch('',['data'=>$tabarr]);
	} else if($send=="优化"){
	  $table = isset($_POST['datebasename']) ? $_POST['datebasename'] : array();
	  if(count($table)>0){
	    foreach($table as $val){
		  $val = ($val!='') ? str_replace(config('database.prefix'),'',$val) : '';
	      Db::query("OPTIMIZE TABLE `$val`");
		}
		$this->success('数据表优化成功！','',1);
	  }else{
	    $this->error('请至少选择一条数据进行操作',url('system/databackup'),2);
	  }
	}else if($send=="修复"){
	  $table = isset($_POST['datebasename']) ? $_POST['datebasename'] : array();
	  if(count($table)>0){
	    foreach($table as $val){
		  $val = ($val!='') ? str_replace(config('database.prefix'),'',$val) : '';
	      Db::query("REPAIR TABLE `$val`");
		}
		$this->success('数据表修复成功！','',1);
	  }else{
	    $this->error('请至少选择一条数据进行操作',url('system/databackup'),2);
	  } 
	}else if($send=="备份"){
	  $table  = isset($_POST['datebasename']) ? $_POST['datebasename'] : array();
	  if(count($table)>0){
		$result = model('Baksql')->backtables($table); //备份全部
		if($result){
	      $this->success('数据库备份成功',url('system/databackup'),2);
		}else{
		  $this->error('数据库备份失败，请重试',url('system/databackup'),2);
		}
	  } else {
	    $this->error('请至少选择一个数据表备份',url('system/databackup'),2);
	  }
	}
  }
  
  public function sysAdmin(){
    $save   = input('post.send','');
	$protectedPath = array('About','App','Article','BaiHeng','Case','Contact','Index','Knowledge','News','Promotion','Qrcode','Remittances','Service','Website','bhAdmin');
	if ($save == '') {
	  $data   = Db::name("systemconfig")->field('adminpath')->where('Id',1)->find();
	  $domain = 'http://'.$_SERVER['HTTP_HOST'].'/';
	  return $this->fetch('',['title'=>'后台目录设置','activeid'=>12,'domain'=>$domain,'data'=>$data,'protectedPath'=>$protectedPath]);
	} else if ($save == '确定保存') {
	  $adminpath    = input('post.adminpath','');
	  $oldadminpath = input('post.oldadminpath','');
	  if ($adminpath=='')                      $this->error('请填写后台目录保护，必须是英文'); 
	  if ($adminpath == $oldadminpath)         $this->error('设置后台目录保护不得和上一次设置目录一致'); 
	  if (in_array($adminpath,$protectedPath)) $this->error($adminpath.'是系统目录，请重新设置'); 
	  $result     = Db::name("systemconfig")->where('Id',1)->update(array('adminpath'=>$adminpath));
	  if( $result ){
		$this->CreateAdmin($adminpath,$oldadminpath);
	    $this->success('后台目录设置更新成功');
	  } else {
	    $this->error('后台目录设置更新失败，请重新试试吧');
	  }
	}
  }
  
  public function clearAdmin(){
    $data   = Db::name("systemconfig")->field('adminpath')->where('Id',1)->find();
	if ($data['adminpath']!='') {
	  Db::name("systemconfig")->where('Id',1)->update(array('adminpath'=>''));
	  unlink(APP_PATH.'home/Controller/'.ucwords($data['adminpath']).'.php');
	}
	$this->success('后台目录设置还原成功');
  }
  
  
  public function databackuplist(){
    $data  = $this->getarrays(config("db_backup"));
	$sdata = array();
	if(count($data)>0){
		for($i=0;$i<count($data);$i++){
		  $sdata[$i]['size'] = (file_exists($data[$i])) ? $this->size(filesize($data[$i])) : 0;
		  $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($data[$i]));
		  $sdata[$i]['path'] = str_replace(config("db_backup").'/','',$data[$i]);
		}
	}
	krsort($sdata);
	$datauparr = array('isdel'=>0,'isre'=>0);
	$this->assign('title','数据库备份管理');
	$this->assign('data',$sdata);
	$this->assign('datasys',$datauparr);
	return view();
  }

  private function size($_size){
	  $_rand = ceil(($_size/1024));	
	  if($_rand<1)     return $_size."bit";	
	  if($_rand>1 && $_rand<1024) return $_rand."KB";
	  if($_rand>1024)  return ceil(($_rand/1024))."MB";
	  if($_rand==1)    return $_rand."KB";
	  if($_rand==1024) return $_rand."MB";
  }
  
  public function deldataup(){
    $delpath = input('delpath','',false);
	if($delpath!=''){
	  @unlink(config('db_backup').'/'.$delpath);
	  $this->success('数据删除成功',url('system/databackuplist'),2); 
	}else{
	  $this->error('数据删除失败，数据不存在，请检查',url('system/databackuplist'),2);
	}
  }
  
  public function downdataup(){
	$downpath = input('downpath','',false);
	if($downpath != ''){
	  model('Baksql')->downloadBak(config('db_backup').'/'.$downpath);
	} else {
	  $this->error('数据下载失败，数据不存在，请检查',url('system/databackuplist'),2);
	}
  }
  
  public function redataup(){
	$repath = input('get.repath','',false);
	if ($repath != '' ){
	  $result = model('Baksql')->recover($repath.'.sql');
	  if( $result ){
	    $this->success('备份还原成功',url('index/index'),2);
	  } else {
	    $this->error('备份还原失败，请重试',url('index/index'),2);
	  }
	} else {
	  $this->error('数据还原失败，数据不存在，请检查',url('system/databackuplist'),2);
	}
  }
  
  public function syslogs(){
	if ( !is_dir( './runtime/logs' ) ) mkdir('./runtime/logs',0777);
	$upTotal = getAppSize('./runtime/logs/');
	$upTotal['size'] = $this->size($upTotal['size']);
    $act   = input('act',1,'intval');
	$path  = input('path','');
	$path  = './runtime/logs/'.$path;
	$act   = ($act<1 || $act>2) ? 1 : $act;
	$page  = input('page',1,'intval');
    if( $act == 1 ) $scene = array('primary','default');
    if( $act == 2 ) $scene = array('default','primary');
	$data  = $this->getarrays($path);
	$count = count($data);
	$pageS = ($act==2) ? config('adminpage')*2 : config('adminpage');
	$sdata = array();
	if( $act == 1 ){
	  $pobj  = new \page\AdminPage($count,$pageS);
	  $start = explode(",",$pobj->limit);
	  $start = isset($start[0]) ? $start[0] : 0;
	  $pagesize    = ($count>=$pageS*$page) ? $pageS*$page : $count;
	  for($i=$start;$i<$pagesize;$i++){
		$sdata[$i]['size']  = (file_exists($data[$i])) ? $this->size(filesize($data[$i])) : 0;
		$sdata[$i]['time']  = date("Y-m-d H:i:s",filectime($data[$i]));
		$sdata[$i]['file']  = ($path =='./runtime/logs/' ) ? str_replace('./runtime/logs//',"",$data[$i]) : str_replace('./runtime/logs/',"",$data[$i]);
	  }
	}
	//文件夹模式
	$objfile = array();
	if( $act == 2 ){
	  $handle = opendir($path);
	  $dwsArr = array ('.','..');
	  $j = 0;
	  while (($file = readdir($handle))!==false) {
		if (!in_array($file,$dwsArr)) {	
		  $objfile[$j]['file']  = $file;
		  $objfile[$j]['count'] = $this->filecount($path.$file.'/');
		  $j++;	
		}
	  }
	  closedir($handle);
	}
	//ending
	krsort($sdata);
	$datashow['pageshow']  = ($count>$pageS && $act!=2) ? $pobj->showpage() : '';
	return $this->fetch('',['dshow'=>$datashow,'file'=>$objfile,'data'=>$sdata,'act'=>$act,'upTotal'=>$upTotal,'scene'=>$scene]);
  }
  
  public function showLog(){
    if (request()->isAjax()) {
      $path = isset($_POST['path']) ? $_POST['path'] : '';
	  if ( $path == '' ) return json(0);
      if ( !file_exists('./runtime/logs/'.$path) ) return json('文件不存在');
	  $fobj = fopen('./runtime/logs/'.$path,'r');
	  $content = '';
	  if ( $fobj ) {
		while (!feof($fobj)) {
		  $str = htmlspecialchars(fgets($fobj, 4096));
		  $str = preg_replace('/\s/','',$str);
		  $str = str_replace("time",'时间',$str);
		  $str = str_replace('content','内容',$str);
		  $str = str_replace('array(','',$str);
		  $str = str_replace('),','',$str);
		  $str = str_replace(")",'',$str);
		  $str = str_replace('&lt;?php','',$str);
		  $str = str_replace(';','',$str);
		  $str = str_replace('return','',$str);
		  $str = str_replace('=','-',$str);
		  $str = str_replace(',','<br/><br/>',$str);
		  $content .= $str;
		}
		fclose($fobj);
		return json($content);
	  } else {
		return json('日志打开失败');
	  }
	} else {
	  $this->error('非法操作');
	}
  }
  
  public function syspic(){
	$upTotal = getAppSize(config("upload_path"));
	$upTotal['size'] = $this->size($upTotal['size']);
    $act  = input('act',1,'intval');
	$path = isset($_GET['path']) ? $_GET['path'] : '';
	$path = config("upload_path").'images/'.$path;
	$act  = ($act<1 || $act>4) ? 1 : $act;
	$page = input('page',1,'intval');
    if($act==1) $scene = array('primary','default','default');
    if($act==2) $scene = array('default','primary','default');
    if($act==3 || $act==4) $scene = array('default','default','primary');
	$data  = $this->getarrays($path);
	$count = count($data);
	$pageS = ($act==2 || $act==4) ? config('adminpage')*2 : config('adminpage');
	$sdata = array();
	if($act!=3){
		$pobj      = new \page\AdminPage($count,$pageS);
		$start     = explode(",",$pobj->limit);
		$start     = isset($start[0]) ? $start[0] : 0;
		$pagesize  = ($count>=$pageS*$page) ? $pageS*$page : $count;
		$normalpic = $this->normalpic(array(1=>array('tables'=>'systemconfig','field'=>'waterpic,weixinpic')),array('default'));
		for($i=$start;$i<$pagesize;$i++){
		  $sdata[$i]['size'] = (file_exists($data[$i])) ? $this->size(filesize($data[$i])) : 0;
		  $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($data[$i]));
		  $sdata[$i]['spic'] = str_replace($path.'/',"",$data[$i]);
		  $sdata[$i]['pic']  = $data[$i]; 
		  $sdata[$i]['isou'] = (in_array(str_replace(config("upload_path").'images//',"",$data[$i]),$normalpic)) ? 1 : 0;
		}
	}
	//文件夹模式
	$objfile = array();
	if($act==3){
	 $handle = opendir($path);
	 $dwsArr = array ('.','..');
	 $j = 0;
	 while (($file = readdir($handle))!==false) {
		if (!in_array($file,$dwsArr)) {	
		  $objfile[$j]['file']  = $file;
		  $objfile[$j]['count'] = $this->filecount($path.$file.'/');
		  $j++;	
		}
	 }
	 closedir($handle);
	}
	//ending
	krsort($sdata);
	$datashow['pageshow']  = ($count>$pageS && $act!=3) ? $pobj->showpage() : '';
	return $this->fetch('',['dshow'=>$datashow,'file'=>$objfile,'data'=>$sdata,'title'=>'图片管理','act'=>$act,'upTotal'=>$upTotal,'scene'=>$scene]);
  }
  
  public function sysdelpic(){
    $send = input('post.deldata');
	if($send == "删除" || $send == "选中删除"){
	  $delpic = isset( $_POST['pubbox'] ) ? $_POST['pubbox'] : array();
	  $succ   = 0;
	  if(count($delpic)>0){
	    for($i=0;$i<count($delpic);$i++){
		  if (file_exists($delpic[$i])){
		    $succ = @unlink($delpic[$i]) ? $succ+1 : $succ+0;
		  }
		}
		cache("fileArr",null);
		cache("normalPic",null);
		$this->success('图片操作成功，共计删除图片 '.$succ.' 张');
	  } else {
	    $this->error('请至少选择一条数据操作');
	  }
	}
  }
  
  public function sysdellogs(){
    $send = input('post.deldata');
	if($send == "删除"){
	  $delpic = isset( $_POST['pubbox'] ) ? $_POST['pubbox'] : array();
	  $succ   = 0;
	  if(count($delpic)>0){
	    for($i=0;$i<count($delpic);$i++){
		  if (file_exists('./runtime/logs/'.$delpic[$i])){
		    $succ = @unlink('./runtime/logs/'.$delpic[$i]) ? $succ+1 : $succ+0;
		  }
		}
		$this->success('日志删除成功，共计删除日志 '.$succ.' 篇');
	  } else {
	    $this->error('请至少选择一条数据操作');
	  }
	}
  }

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
  
  private static $filepath = array();	
  private function getfile($path){
	global $filepath;
	if ( $path == '' || !file_exists( $path ) ) return false;
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
  
  private function normalpic($addField=array(),$clernArr=array()){
	 if (cache('normalPic')) return cache('normalPic');
	 $tables  = model('Baksql')->getTables();
	 $normal  = array();
	 if(count($tables)>0){
	   foreach($tables as $val){
		 if($this->ckfields($val)){
		   $obj   = Db::name(str_replace(config('database.prefix'),'',$val));
		   $odata = $obj->field('pic')->select();
		   if($odata){
		    foreach($odata as $okey=>$oval){
			   if($oval['pic']!=''){
			     $normal[] = $oval['pic'];
			   }
		    }
		   }
		 }
	   }
	 }
	 if ( count($addField) > 0 ) {
	   foreach ($addField as $key=>$val) {
	     $obj =  Db::name($val['tables'])->field($val['field'])->select();
		 if ( $obj ){
		   foreach($obj as $mkey=>$mval) {
		     $fieldArr = explode(',',$val['field']);
			 if (isset($val['spc']) && $val['spc']) {
			   for($i=0;$i<count($fieldArr);$i++) {
			     $picArr = ($mval[$fieldArr[$i]]!='') ? unserialize($mval[$fieldArr[$i]]) : array();
			     if ( count($picArr) > 0 ) {
			       for($j=0;$j<count($picArr);$j++) {
				     $normal[] = $picArr[$j];
				   }
				 }
			   }
			 } else {
			   for($i=0;$i<count($fieldArr);$i++) {
			     $normal[] = $mval[$fieldArr[$i]];
			   }
			 }
		   }
		 }
	   }
	 }
	 //文件夹下为非冗余
	 if (count($clernArr)) {
	   for ( $c=0; $c<count($clernArr); $c++ ) {;
	     $folderArr = piclist(config("upload_path").'images/'.$clernArr[$c]);
		 if (count($folderArr) > 0) {
		   for ($j=0;$j<count($folderArr);$j++) {
		     if ( $folderArr[$j] !='' ) {
			   $normal[] = str_replace(config("upload_path").'images/',"",$folderArr[$j]);
			 }
		   }
		 }
	   }
	 }
	 cache('normalPic',$normal,3600*24);
	 return $normal;
  }
  
  private function ckfields($table,$field='pic'){
    if ( $table == '' ) return false;
	$fdata    = Db::query("SHOW COLUMNS FROM `$table`");
	$fieldarr = array();
	foreach($fdata as $key=>$val){
	  $fieldarr[] = $val['Field'];
	}
    return (in_array($field,$fieldarr)) ? true : false;
  }
    
}