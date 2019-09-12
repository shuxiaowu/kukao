<?php
  function icon($icon,$code='span',$class=''){
     $class = ($class=='') ? '' : ' '.$class;
     return '<'.$code.' class="glyphicon glyphicon-'.$icon.$class.'"></'.$code.'>';
  }
  
  function faicon($icon,$code='span',$class=''){
     $class = ($class=='') ? '' : ' '.$class;
	 return '<'.$code.' class="fa fa-'.$icon.$class.'"></'.$code.'>';
  }
  
  function picon($icon,$code='i',$class=''){
     $class = ($class=='') ? '' : ' '.$class;
	 return '<'.$code.' class="pli-'.$icon.$class.'"></'.$code.'>';
  }
  
  function btn($conf = array()){
	 $btn_conf = array(
	              'scene' => isset($conf['scene']) ? $conf['scene'] : 'primary',     //情景
				  'vals'  => isset($conf['vals'])  ? $conf['vals']  : '',            //文本
				  'icon'  => isset($conf['icon'])  ? $conf['icon']  : '',            //图标
				  'faicon'=> isset($conf['faicon'])? $conf['faicon']: '',            //fa图标
				  'picon' => isset($conf['picon']) ? $conf['picon'] : '',            //pli图片
				  'size'  => isset($conf['size'])  ? $conf['size']  : '4',           //尺寸 默认超小 1,2,3,4
				  'ban'   => isset($conf['ban'])   ? $conf['ban']   : 0,             //按钮是否可用
				  'type'  => isset($conf['type'])  ? $conf['type']  : 'button',      //按钮类型 
				  'dir'   => isset($conf['dir'])   ? $conf['dir']   : 'top',         //提示的方向
				  'tips'  => isset($conf['tips'])  ? $conf['tips']  : '',            //提示文字
				  'url'   => isset($conf['url'])   ? $conf['url']   : '',            //跳转到
				  'add'   => isset($conf['add'])   ? $conf['add']   : '',            //需要新增的类
				  'name'  => isset($conf['name'])  ? $conf['name']  : 'send',        //名称	
				  'line'  => isset($conf['line'])  ? $conf['line']  : 0,             //bootstrap4.0 outline属性 
				  'round' => isset($conf['round']) ? $conf['round'] : 0,             //圆角
				  );
	 $scene = ($btn_conf['scene']!='')    ? 'btn-'.$btn_conf['scene']   : '';        //情景颜色
	 $scene = ($btn_conf['line'])         ? $scene.'-outline'           : $scene;    //outline属性
	 $scene = ($btn_conf['round'])        ? $scene.' btn-rounded'       : $scene;    //圆角
	 $icon  = ($btn_conf['icon']!='')     ? icon($btn_conf['icon'])     : '';        //定义自定义图标
	 if ( $btn_conf['faicon'] !='' ) $icon = faicon($btn_conf['faicon']);
	 if ( $btn_conf['picon'] !='' )  $icon = picon($btn_conf['picon']);
	 $tips  = ($btn_conf['tips']!='')     ? tooltip($btn_conf['tips'],$btn_conf['dir']) : ''; //启用按钮tooltips
	 $size  = $btn_conf['size']; //按钮尺寸
	 switch($size){
	   case 1:
	   $size = ' btn-lg';
	   break;
	   case 2:
	   $size = '';
	   break;
	   case 3:
	   $size = ' btn-sm';
	   break;
	   case 4:
	   $size = ' btn-xs';
	   break;
	 }
	 $ban   = ($btn_conf['ban']) ? ' disabled="disabled"' : '';
	 $vals  = $btn_conf['vals'];
	 $icon  = ($vals!='') ? $icon.'&nbsp;' : $icon;
	 $type  = $btn_conf['type'];
	 $add   = ($btn_conf['add']!='') ? ' '.$btn_conf['add'] : '';
	 $name  = $btn_conf['name'];	 
	 $ckurl = ($btn_conf['url']!='') ? " onClick=\"location.href='".$btn_conf['url']."'\"" : '';
	 return '<button type="'.$type.'" tabindex="999" value="'.$vals.'" name="'.$name.'"'.$ckurl.' class="btn '.$scene.$size.$add.'" '.$tips.$ban.'>'.$icon.$vals.'</button>';
  }
  
  function tooltip($tips,$placement='top',$tiptype=1){
	if($tiptype==1){
      return ' data-toggle="tooltip" data-placement="'.$placement.'" title="'.$tips.'"';
	}else{
	  return ' data-container="body" data-toggle="popover" data-trigger="focus" data-placement="'.$placement.'" data-content="'.$tips.'"';
	}
  }
  
  function imgshow($pic='',$placement="left") {
    $isfile  = (file_exists(config("upload_path").'images/'.$pic)) ? 1 : 0;
	if( $pic == '' ) $isfile = 0;
	$showpic = ($isfile) ? root().'/'.config("upload_path").'images/'.$pic  : root().'/public/bhadmin/images/404.jpg';
	$html    = "<img src='".$showpic."' width='150' alt='picture'>";
	return ' data-toggle="popover" data-placement="'.$placement.'" data-content="'.$html.'"';
  }
  
  function tabstyle(){
    return 'table table-striped table-hover';//
  }
  
  function ckall($id=0){
	$id = time().$id;
    return '<span class="ckallbox"><input type="checkbox" value="0" class="ckall m-checkbox" id="ckbox'.$id.'"><label for="ckbox'.$id.'"></label></span>';
  }
  
  function ckbox($id,$i,$isck=0,$isban=0){
	if(!$isban){
	  return ($isck==0) ? '<input type="checkbox" value="'.$id.'" name="pubbox[]" id="pubbox'.$id.'" class="myselect m-checkbox"><label for="pubbox'.$id.'"></label></span>' : '<input type="checkbox" value="'.$id.'" name="pubbox[]" id="pubbox'.$id.'" checked class="myselect m-checkbox"><label for="pubbox'.$id.'"></label></span>';
	}else{
	  return '<input type="checkbox" value="0" id="pubbox'.$id.'" name="pubbox[]" disabled class="myselect m-checkbox"><label for="pubbox'.$id.'"></label></span>';
	}
  }
  
  function checkbox($id=0,$isck=0,$name='enabled'){
	if($isck){
      return '<input type="checkbox" name="'.$name.'" id="'.$name.'" value="1" class="m-checkbox" checked="checked"><label for="'.$name.'"></label>';
	}else{
	  return (!$id) ? '<input type="checkbox" name="'.$name.'" id="'.$name.'" value="1" class="m-checkbox"><label for="'.$name.'"></label>' : '<input type="checkbox" name="'.$name.'" id="'.$name.'" value="1" checked="checked" class="m-checkbox"><label for="'.$name.'"></label>';
	}
  }
  
  //获取系统菜单
  function showadminauth($id=0,$show=1,$auth=''){
    if ($id) {
      $data = db('adminauth')->field("*")->where('tid='.$id)->order('ord ASC')->select();
      if ($data) {
	    $str = '';
        foreach($data as $key=>$val) {
		  $icon = '无';
		  if ($val['icon']!='') {
		    $icon = ($val['isext']) ? faicon($val['icon']) : icon($val['icon']);
		  }
		  $special = ($val['isspecial']) ? ' <font color="red">特</font>' : '';
		  if ($show == 1) {
	        $str .= '<tr id="adminauth'.$val['Id'].'" class="success adminauth'.$id.'" style="display:none;"><td align="center" valign="middle" height="37">'.ckbox($val['Id'],$key-1).'</td><td align="center" valign="middle">'.$val['Id'].'</td><td align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$val['title'].$special.'</td><td align="left" valign="middle">'.$val['linkurl'].'</td><td align="center" valign="middle">'.$icon.'</td><td align="center" valign="middle">'.modattr($val['Id'],$val['isext'],'adminauth','isext',array('是','否')).'</td><td align="center" valign="middle">'.modattr($val['Id'],$val['isopen'],'adminauth','isopen',array('展开','关闭')).'</td><td align="center" valign="middle">'.modord($val['ord'],$val['Id'],'adminauth').'</td><td align="left" valign="middle">'.btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','round'=>1,'url'=>url('system/adminauthmod','id='.$val['Id']))).'</td></tr>';
		  } else {
		    $ischecked = '';
		    if ($auth!='') {
		      $myauth = explode(",",$auth);
			  $ischecked = in_array($val['Id'],$myauth) ? ' checked="checked"' : '';
		    }
		    $str .= '<tr id="adminauth'.$val['Id'].'" class="success adminauth'.$id.'" style="display:none;"><td align="center" valign="middle" height="37"><input type="checkbox" class="m-checkbox" id="auth'.$val['Id'].'" value="'.$val['Id'].'"'.$ischecked.' name="auth[]"><label for="auth'.$val['Id'].'"></label></td><td align="center" valign="middle">'.$val['Id'].'</td><td align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$val['title'].$special.'</td></tr>';
		  }
	    }
	    return $str;
	  }
    }
  }
  
  //input函数
  function inputs($conf = array()){
    $cname    = isset($conf['cname'])    ? $conf['cname']                             : 'form-control';
	$name     = isset($conf['name'])     ? $conf['name']                              : '';
	$val      = isset($conf['val'])      ? $conf['val']                               : '';
	$units    = isset($conf['units'])    ? $conf['units']                             : '';
	$add      = isset($conf['add'])      ? ' '.$conf['add']                           : '';
	$has      = isset($conf['has'])      ? ' has-'.$conf['has']                       : '';
	$scene    = isset($conf['scene'])    ? $conf['scene']                             : '';
	$icon     = isset($conf['icon'])     ? $conf['icon']                              : '';
	$faicon   = isset($conf['faicon'])   ? $conf['faicon']                            : '';
	$picon    = isset($conf['picon'])    ? $conf['picon']                             : '';
	$tips     = isset($conf['tips'])     ? tooltip($conf['tips'],'right')             : '';
	$type     = isset($conf['type'])     ? $conf['type']                              : 'text';
	$width    = isset($conf['width'])    ? ' style="width:'.($conf['width']*10).'px"' : ' style="width:400px;"';
	$disabled = isset($conf['disabled']) ? ' disabled="disabled"'                     : '';
	$readonly = isset($conf['readonly']) ? ' readonly="readonly"'                     : '';
	$place    = isset($conf['place'])    ? ' placeholder="'.$conf['place'].'"'        : '';
	if ($scene == '' && $icon=='' && $units=='' && $faicon=='' && $picon == '') {
	  $tips = isset($conf['tips']) ? '<span class="text-warning">'.$conf['tips'].'</span>' : ''; 
	}
	if ( $scene == 'key' )   $place = ' placeholder="页面关键词"';
	if ( $scene == 'des' )   $place = ' placeholder="页面描述"';
	if ( $scene == 'title' ) $place = ' placeholder="页面标题"';
	if ( $scene == 'topic' ) $place = ' placeholder="资料名称"';
	if ( $name  == 'intro' && $val!='' )   $val = stripslashes($val);
	if ( $scene == 'ord' && $val == '' )   $val = 1;
	$baseclass  =  'input-group input-group-sm'.$has;
	if ( $type == 'text' || $type == 'password' ) {
	  $input = "<input type='$type' value='$val'$place name='$name' class='$cname$add'$disabled$readonly>";
	  if ( $scene != '' ) {
		if ( $scene == 'tag' )   return '<div'.$width.'><input type="text" class="form-control'.$add.'"'.$width.' name="'.$name.'" placeholder="tag值回车输入下一个" value="'.$val.'" data-role="tagsinput"></div>';
	    if ( $scene == 'date' )  return '<div class="'.$baseclass.'"'.$tips.' style="width:190px;"><input type="text" value="'.$val.'" name="'.$name.'" class="input-time '.$cname.$add.'"'.$disabled.'><span class="input-group-addon">'.icon('calendar').'</span></div>';
		if ( $scene == 'day' )   return '<div class="'.$baseclass.'"'.$tips.' style="width:190px;"><input type="text" value="'.$val.'" name="'.$name.'" class="input-date '.$cname.$add.'"'.$disabled.'><span class="input-group-addon">'.icon('calendar').'</span></div>';
		if ( $scene == 'topic' ) return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'</div>';
		if ( $scene == 'link' )  return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'<span class="input-group-addon">'.icon('link').'</span></div>';
		if ( $scene == 'ord' )   return '<div class="'.$baseclass.'"'.tooltip('数字越小，排在越前','right').' style="width:100px;">'.$input.'</div>';
		if ( $scene == 'key' )   return '<div class="'.$baseclass.'"'.tooltip('页面关键词，利于SEO优化,200个字符以内','right').' style="width:600px;">'.$input.'</div>';
		if ( $scene == 'des' )   return '<div class="'.$baseclass.'"'.tooltip('页面描述，利于SEO优化,200个字符以内','right').' style="width:600px;">'.$input.'</div>';
		if ( $scene == 'title' ) return '<div class="'.$baseclass.'"'.tooltip('页面标题，利于SEO优化,200个字符以内','right').' style="width:600px;">'.$input.'</div>';
	  }
	  if ( $icon != '' )         return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'<span class="input-group-addon">'.icon($icon).'</span></div>';
	  if ( $faicon != '' )       return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'<span class="input-group-addon">'.faicon($faicon).'</span></div>';
	  if ( $picon !='' )         return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'<span class="input-group-addon">'.picon($faicon).'</span></div>';
	  if ( $units != '' )        return '<div class="'.$baseclass.'"'.$width.$tips.'>'.$input.'<span class="input-group-addon">'.$units.'</span></div>';
	  return "<input type='$type' value='$val'$place$width name='$name' class='$cname$add'$disabled$readonly>".$tips; 
	}
	if ( $type == 'textarea' )   return "<textarea name='$name'$place class='mytextarea $cname$add'>$val</textarea>$tips";
	if ( $type == 'editor' )     return "<textarea name='$name'.$place class='mytextarea $cname$add' style='width:95%;height:400px;'>$val</textarea>";
  }
  
  function modField($val='',$id=0,$field='',$tables=''){
    $val = ($val=='') ? '--' : $val;
    return '<input type="text" class="modfield" data-tables="'.$tables.'" data-id="'.$id.'" data-odata="'.$val.'" data-field="'.$field.'" value="'.$val.'">';
  }
  
  function tplUrl($url = '') {
    if ($url == '') {
	  return 'javascript:void(0)';
	} else {
	  $uArr = explode(",",$url);
	  if ( count($uArr) > 1 ) {
	    return url($uArr[0],$uArr[1]);
	  } else {
	    return url($uArr[0]);
	  }
	}
  }
  
  function cg($name='content',$default='',$method='post'){
	if($method == 'get'){
	  return isset($_GET[$name])  ? trim($_GET[$name])  : $default;
	}else if($method == 'post'){
	  return isset($_POST[$name]) ? trim($_POST[$name]) : $default;
	}
  }
  
  function uppic($config = array()){
	  $tips    = isset($config['tips'])    ? $config['tips']    : ''; //提示
	  $iscrop  = isset($config['iscrop'])  ? $config['iscrop']  : 1;  //是否裁剪
	  $w       = isset($config['w'])       ? $config['w']       : 0;  //裁剪宽度
	  $h       = isset($config['h'])       ? $config['h']       : 0;  //裁剪高度
	  $iswater = isset($config['iswater']) ? $config['iswater'] : 0;  //强制不加水印
	  $pic     = isset($config['pic'])     ? $config['pic']     : ''; //在编辑场景里面需要传
	  $isshow  = isset($config['isshow'])  ? $config['isshow']  : 0;  //在图片上传成功之后弹出裁剪框 1表示强制弹出 0表示不弹出
	  $choice  = isset($config['choice'])  ? $config['choice']  : 1;  //在已经上传的图片里面选择
	  $npic    = root().'/public/bhadmin/images/adminbg.jpg';
	  $cropdata= '';
	  $choice  = ($choice) ? ' '.btn(array('vals'=>'选择','add'=>'btn-choice','round'=>1,'scene'=>'default','icon'=>'picture','tips'=>'点击在已有图片库中选择一张')) : '';
	  if ( $iscrop ) {
		$isfile  = ($pic!='' && file_exists(config("upload_path").'images/'.$pic)) ? 1 : 0;
		$showpic = ($isfile) ? root().'/'.config("upload_path").'images/'.$pic  : $npic;
	    $cropdata = '<div class="crop-mask"></div>
		             <div class="crop-container">
					  <div class="imgcrop-main">
					      <div class="modal-header">
							<button type="button" class="close btn-close-cropper" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title">裁剪图片</h4>
						  </div>
		               <div class="img-container">
					     <img src="'.$showpic.'">
					     <div class="cropper-result">裁剪数据：左：<span class="c-l"></span>px，上：<span class="c-t"></span>px，宽度：<span class="c-w"></span>px，高度：<span class="c-h"></span>px &nbsp;&nbsp;</div>
					   </div>
					   <div class="modal-footer">
							<button type="button" class="btn btn-default btn-sm btn-rounded btn-close-cropper">'.icon('off').' 取消</button>
							<button type="button" class="btn btn-primary btn-sm btn-rounded btn-cropper"'.tooltip('点击确定裁剪图片').'>'.icon('scissors').' 裁剪</button>
					   </div>
					  </div>
					 </div>
					 <input id="size-w" type="hidden" value="'.$w.'">
					 <input id="size-h" type="hidden" value="'.$h.'">
		             <input id="img-x" type="hidden" value="0" placeholder="x">
					 <input id="img-y" type="hidden" value="0" placeholder="y">
					 <input id="img-h" type="hidden" value="0" placeholder="w">
					 <input id="img-w" type="hidden" value="0" placeholder="h">
					 <input id="img-r" type="hidden" value="0" placeholder="r">';
	    $tips = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').' '.$tips.btn(array('vals'=>'裁剪','add'=>'btn-cut','round'=>1,'scene'=>'default','icon'=>'scissors','tips'=>'点击裁剪图片')).$choice.'</div>' : '<div class="uptips text-warning">'.btn(array('vals'=>'裁剪','add'=>'btn-cut','scene'=>'default','round'=>1,'icon'=>'scissors','tips'=>'点击裁剪图片')).$choice.'</div>';
	  } else {
	    $tips = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').' '.$tips.$choice.'</div>' : '';
	  }
	  $isshow  = ($isshow)  ? '<div class="showcroptool hide"></div>' : '';
	  $iswater = ($iswater) ? '<div class="nowater"></div>' : '';
	  if ( $pic == '' ) {
	    return '<div class="bh-cropmain">
		         <div class="bh-newupload">
				  <input id="uppic" name="Filedata" type="file"><input id="pic" name="pic" type="hidden" value="" />
				  <span class="uploadloading"><span class="glyphicon glyphicon-picture"><b>选择上传</b></span></span>
				 </div>
				 '.$tips.'
				 <div class="uppicdiv">
				  <div class="picshow">
				   <div class="picdiv"></div>
				   <div class="picfoot">'.icon('picture','b').icon('trash').'</div>
				  </div>
				 </div>'.$iswater.$isshow.$cropdata.'
				</div>';
	  } else {
		$isfile  = (file_exists(config("upload_path").'images/'.$pic)) ? 1 : 0;
		$showpic = ($isfile) ? root().'/'.config("upload_path").'images/'.$pic  : root().'/public/bhadmin/images/404.jpg';
        return '<div class="bh-cropmain">
		         <div class="bh-newupload">
				  <input id="uppic" name="Filedata" type="file"><input id="pic" name="pic" type="hidden" value="'.$pic.'" />
				  <span class="uploadloading"><span class="glyphicon glyphicon-picture"><b>选择上传</b></span></span>
				 </div>
				 '.$tips.'
				 <div class="uppicdiv" style="display:block;">
				  <div class="picshow">
				   <div class="picdiv"><img src="'.$showpic.'" data-action="zoom"></div>
				   <div class="picfoot"><b class="glyphicon glyphicon-picture">'.$pic.'</b>'.icon('trash').'</div>
				  </div>
				 </div>'.$iswater.$isshow.$cropdata.'
				 <div class="nodeloriginal"></div>
				</div>';
	  }
 }
 
 //上传图片 FORM UPLOAD
 function uppicture($pic='',$tips='',$index=1,$name='pic'){
	  $tips    = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').$tips.'</div>' : '';
	  $myindex = ($index==1) ? '' : $index;
	  $myname  = ($name!='' && $name!='pic') ? $name : 'pic'.$myindex;
      if($pic==''){
	    return '<div class="myupload"><input id="uploadpic'.$index.'" name="Filedata" class="uploadpic" type="file" data-id="'.$index.'"><span class="glyphicon glyphicon-picture"><b>选择上传</b></span></div><div class="up-progress"><div class="up-bar"></div></div><input id="uppic'.$index.'" name="'.$myname.'" type="hidden" value="">'.$tips.'<div class="uppicdiv uppicturediv"><div class="picshow"><div class="picdiv"></div><div class="mypicfoot" data-id="'.$index.'"><b class="glyphicon glyphicon-picture"></b>'.icon('trash').'</div></div></div>';
	  }else{
		$isfile = (file_exists(config("upload_path").'images/'.$pic)) ? 1 : 0;
		$showpic = ($isfile) ? root().'/'.config("upload_path").'images/'.$pic  : root().'/public/bhadmin/images/404.jpg';
		return '<div class="myupload"><input id="uploadpic'.$index.'" name="Filedata" class="uploadpic" type="file" data-id="'.$index.'"><span class="glyphicon glyphicon-picture"><b>选择上传</b></span></div><div class="up-progress"><div class="up-bar"></div></div><input id="uppic'.$index.'" name="'.$myname.'" type="hidden" value="'.$pic.'">'.$tips.'<div class="uppicdiv uppicturediv" style="display:block;"><div class="picshow"><div class="picdiv"><img src="'.$showpic.'" data-action="zoom"></div><div class="mypicfoot" data-id="'.$index.'"><b class="glyphicon glyphicon-picture">'.$pic.'</b>'.icon('trash').'</div></div></div>';
	  }
 }
 
 //多图上传
 function upatlas($file='',$tips='',$piclimit=5){
	  $tips = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').' '.$tips.'</div>' : '';
	  if($file==''){
	    return '<input id="upatlas" name="upatlas" type="file">'.$tips.'<div class="upupatlas"><h3>'.icon('picture').' 图集缩略图，允许上传图片 <span class="piclimit">'.$piclimit.'</span> 张</h3><div class="atlaspiclist"></div></div>';
	  }else{
		$fileArr = unserialize($file);
	    $myatlas = '';
		if(count($fileArr)>0){
		  foreach($fileArr as $fval){
		    $isfile  = (file_exists(config("upload_path").'images/'.$fval)) ? 1 : 0;
		    $showpic = ($isfile) ? root().'/'.config("upload_path").'images/'.$fval  : root().'/public/bhadmin/images/404.jpg';
		    $myatlas .= '<div class="atlaspic"><input type="hidden" name="atlas[]" value="'.$fval.'"><div class="atlaspicfile"><img src="'.$showpic.'" data-action="zoom"></div><div class="atlasdel">'.icon('trash').' 删除图片</div></div>';
		  }
		}
		$limit = $piclimit - intval(count($fileArr));
	    return '<input id="upatlas" name="upatlas" type="file">'.$tips.'<div class="upupatlas" style="display:block;"><h3>'.icon('picture').' 图集缩略图，允许上传图片 <span class="piclimit">'.$limit.'</span> 张</h3><div class="atlaspiclist">'.$myatlas.'</div></div>';
	  }
 }
 
 //上传文件
 function upfile($file='',$tips=''){
	$tips = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').' '.$tips.'</div>' : '';
    if($file==''){
	  return '<div class="ui-upfile"><input id="upfile" name="Filedata" type="file"><div class="ui-file-foot"><span class="glyphicon glyphicon-folder-open"><b>选择上传</b></span></div></div><input id="filename" name="filename" type="hidden" value="">'.$tips.'<div class="upfilediv"><div class="fileshow">'.icon('file').'<span class="upfilename"></span><span class="glyphicon glyphicon-trash del-file pull-right text-danger"></span></div></div>';
	} else {
	  return '<div class="ui-upfile"><input id="upfile" name="Filedata" type="file"><div class="ui-file-foot"><span class="glyphicon glyphicon-folder-open"><b>选择上传</b></span></div></div><input id="filename" name="filename" type="hidden" value="'.$file.'"><input name="oldfile" type="hidden" value="'.$file.'">'.$tips.'<div class="upfilediv" style="display:block;"><div class="fileshow">'.icon('file').'<span class="upfilename"><a href='.root().config('upload_path').'files/'.$file.'>'.$file.'</a></span><span class="glyphicon glyphicon-trash del-file pull-right text-danger"></span></div></div>';
	}
 }
 function picsize($sty){
	switch ($sty) {
		case 8:return '284px*378px,比例相同即可，否则，前台图片异常自负';break;
		case 9:return '663px*357px，比例相同即可';break;
		case 10:return '663px*357px，比例相同即可';break;
		case 11:return '663px*357px，比例相同即可';break;
		default:return '663px*357px，比例相同即可';break;
	}
 }
 //修改排序
 function modord($ord,$id,$tables){
    $click = " onClick=\"modord('".$tables."','".$id."')\"";
    return '<input type="text" value="'.$ord.'" name="modord'.$id.'" class="textord" /><button type="button" tabindex="999" class="btn btn-default btn-xs btn-ord"'.tooltip('点击可以修改排序').$click.'> 修改</button>';
 }
 
 //修改属性 字段从1到0 或者 从0到1
 function modattr($id,$val,$tables,$field='enabled',$tip=array('启用','禁用')){
    if($val==1){
	  return '<div class="btn-group" data-id="'.$id.'" data-tables="'.$tables.'" data-field="'.$field.'" data-tip1="'.$tip[0].'" data-tip2="'.$tip[1].'"><button type="button" tabindex="999" class="btn btn-rounded btn-info btn-xs btn-enabled" data-mark="1" data-toggle="tooltip" data-placement="top" title="点击'.$tip[0].'数据">'.$tip[0].'</button><button type="button" tabindex="999" class="btn btn-default btn-rounded btn-disabled btn-xs" data-mark="2" data-toggle="tooltip" data-placement="top" title="点击'.$tip[1].'数据">'.$tip[1].'</button></div>';
	} else {
	  return '<div class="btn-group" data-id="'.$id.'" data-tables="'.$tables.'" data-field="'.$field.'" data-tip1="'.$tip[0].'" data-tip2="'.$tip[1].'"><button type="button" tabindex="999" class="btn btn-rounded btn-default btn-xs btn-enabled" data-mark="1" data-toggle="tooltip" data-placement="top" title="点击'.$tip[0].'数据">'.$tip[0].'</button><button type="button" tabindex="999" class="btn btn-default btn-rounded btn-xs btn-disabled active" data-mark="2" data-toggle="tooltip" data-placement="top" title="点击'.$tip[1].'数据">'.$tip[1].'</button></div>';
	}
 }
 
 //下拉
 function dropdown($data,$id=0,$sel='请选择类别',$name="inftype"){
	  $sel = ($sel!='') ? $sel : '请选择类别';
	  $return = '<div class="btn-group btn-dropdown"><input type="hidden" value="'.$id.'" id="'.$name.'" class="drop-val" name="'.$name.'"><button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$sel.'</span> <span class="caret"></span></button>';
	  if($data==1) $data = array(0=>array('Id'=>2,'topic'=>'启用'),1=>array('Id'=>1,'topic'=>'禁用'));
	  if($data==2) $data = array(0=>array('Id'=>2,'topic'=>'置顶'),1=>array('Id'=>1,'topic'=>'非置顶'));
	  if($data && is_array($data)>0){
		 $return .= '<ul class="dropdown-menu dropdown-type">';
		 $sel = (!$id) ? $sel : '请选择一项';
		 $return .= '<li><a href="javascript:void(0)" data-id="0">'.$sel.'</a></li>';
		 $return .= '<li role="separator" class="divider"></li>';
		 foreach($data as $mrkey=>$marval){
		   $return .= '<li><a href="javascript:void(0)" data-id="'.$marval['Id'].'">'.$marval['topic'].'</a></li>';
		 }
		 $return .= '</ul>'; 
	  }
	  $return .= '</div>';
	  return $return;
  }
  
  //多级联动
  function dropdownlink($data,$field,$tables,$type=2,$dropname=array(),$dropid=array()){
	  $field1   = (isset($field[0]) && $field[0]!='') ? $field[0] : '';
	  $field2   = (isset($field[1]) && $field[1]!='') ? $field[1] : '';
	  $tables1  = (isset($tables[0]) && $tables[0]!='') ? $tables[0] : '';
	  $tables2  = (isset($tables[1]) && $tables[1]!='') ? $tables[1] : '';
	  $dropname = (count($dropname)>0) ? $dropname : array('请选择大类','请选择子类','请选择小类');
	  $dropname[0] = (isset($dropname[0]) && $dropname[0]!='') ? $dropname[0] : '请选择大类';
	  $dropname[1] = (isset($dropname[1]) && $dropname[1]!='') ? $dropname[1] : '请选择子类';
	  $dropname[2] = (isset($dropname[2]) && $dropname[2]!='') ? $dropname[2] : '请选择小类';
	  $dropid      = (count($dropid)>0) ? $dropid : array(0,0,0);
	  $return = '<div class="btn-dropdownlink pull-left"><div class="btn-group btn-dropdown btn-group-type1">
	             <input type="hidden" value="'.$dropid[0].'" name="ctag" class="drop-hide">
				 <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[0].'</span> <span class="caret"></span></button>';
	  if($data && is_array($data)>0){
		 $return .= '<ul class="dropdown-menu mydrop-menu-type1">';
		 $return .= '<li><a href="javascript:void(0)" data-id="0">请选择大类</a></li>';
		 $return .= '<li role="separator" class="divider"></li>';
		 foreach($data as $mrkey=>$marval){
		   $return .= '<li><a href="javascript:void(0)" data-id="'.$marval['Id'].'" data-tables1="'.$tables1.'" data-tables2="'.$tables2.'" data-field1="'.$field1.'" data-field2="'.$field2.'">'.$marval['topic'].'</a></li>';
		 }
		 $return .= '</ul>'; 
	  }
	  $return .= '</div>';
	  $return .= '&nbsp;<div class="btn-group btn-dropdown btn-group-type2">   
	              <input type="hidden" value="'.$dropid[1].'" name="mtag" class="drop-hide">
				  <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[1].'</span> <span class="caret"></span></button>';
	 $return .= '<ul class="dropdown-menu mydrop-menu-type2">';
	 $return .= '<li><a href="javascript:void(0)" data-id="0">请先选择大类</a></li>';
	 $return .= '</ul>';
	 $return .= '</div>';
	 if($type==3){
	  $return .= '&nbsp;<div class="btn-group btn-dropdown btn-group-type3">   
	              <input type="hidden" value="'.$dropid[2].'" name="stag" class="drop-hide">
				  <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[2].'</span> <span class="caret"></span></button>';
	  $return .= '<ul class="dropdown-menu mydrop-menu-type3">';
	  $return .= '<li><a href="javascript:void(0)" data-id="0">请先选择子类</a></li>';
	  $return .= '</ul>';
	  $return .= '</div>';
	 }			  
	 return $return.'</div>';
 }
 
 //搜索 {:searchField(array('tables'=>'adminauth','field'=>'title','name'=>'adminuid','s_field'=>'name,title'))}
 function searchField($conf = array()){
    $name    = isset($conf['name'])      ? $conf['name']      : 'vid';   //表单名称
    $default = isset($conf['default'])   ? $conf['default']   : '请选择'; //默认
    $width   = isset($conf['width'])     ? $conf['width']     : '120';   //宽度
    $tables  = isset($conf['tables'])    ? $conf['tables']    : '';      //表格
    $field   = isset($conf['field'])     ? $conf['field']     : '';      //显示的字段
    $s_field = isset($conf['s_field'])   ? $conf['s_field']   : '';      //需要检索字段
    $limit   = isset($conf['limit'])     ? $conf['limit']     : 20;      //LIMIT
    $show    = isset($conf['showfield']) ? $conf['showfield'] : $field;  //额外显示的字段
    if ( $name!='' && $tables!='' && $s_field!='' ) {
	  $list = '';
	  $data = db($tables)->field('Id,'.$s_field)->limit($limit)->select();
	  if ( $data ) {
	    foreach( $data as $key=>$val ) {
	      $list .= '<li class="active-result" data-id="'.$val['Id'].'">'.$val[$field].'</li>';
		}
	  } else {
	    $list = '<li class="active-result" data-id="0">暂无数据</li>';
	  }
      return '<div class="chosen-container chosen-container-single" style="width:'.$width.'px; margin-bottom:10px;">
				 <a class="chosen-single chosen-single-with-deselect"><span>'.$default.'</span><abbr class="search-choice-close"></abbr><div><b></b></div></a>
				 <div class="chosen-drop">
				  <div class="chosen-search">
				   <input type="hidden" value="0" class="chose-keyid" name="'.$name.'">
				   <input type="text" class="chosen-keys" data-field="'.$field.'" data-sfield="'.$s_field.'" data-tables="'.$tables.'" autocomplete="off">
				  </div>
				  <div class="chosen-loading"><span class="fa fa-spinner fa-spin"></span></div>
				  <ul class="chosen-results">'.$list.'</ul>
				 </div>
			 </div>';
   } else {
     return '';
   }
 }
 
 function dates(){
   return date("Y-m-d H:i:s");
 }
 
 function showdate($date){
   return ($date!='') ? date("Y-m-d",strtotime($date)) : '--';
 }
 
 function ispic($pic = '') {
   if ( $pic!='' ) {
	 $isfile  = (file_exists(config("upload_path").'images/'.$pic)) ? 1 : 0;
	 return ($isfile) ? root().'/'.config("upload_path").'images/'.$pic  : root().'/public/bhadmin/images/404.jpg';
   } else {
     return root().'/public/bhadmin/images/404.jpg';
   }
 }
 
 function gtopic($db,$id,$field='topic',$default='') {
   if ($db!='' && $id!=0 && $field!='') {
       $mydata = db($db)->field($field)->where(array('Id'=>$id))->find();
       if ($mydata) {
	   return $mydata[$field];
	 } else {
	   return $default;
	 }
   } else {
     return $default;
   }
 }
 
 //获取栏目
 function getMenu($topmenuid=0){
   if ( $topmenuid && config('admin_menu') ) {
     $topmenu = db('adminauth')->field('Id,name,icon,isext,linkurl,isopen,title')->where('1=1 AND Id='.$topmenuid)->order('ord ASC')->select();
	 if ( $topmenu ) {
	   foreach( $topmenu as $tk=>$tv ) {
		 $tabid = $tv['Id'];
		 $mmenu = db('adminauth')->field('Id,name,icon,isext,linkurl,isopen,title')->where('1=1 AND tid='.$tabid)->order('ord ASC')->select();
		 if ( $mmenu ) {
		   $topmenu[$tk]['menu'] = $mmenu;
		   foreach ( $mmenu as $key=>$val ) {
			 $topmenu[$tk]['menu'][$key]['smenu'] = db('adminauth')->field('name,icon,isext,linkurl,title,Id')->where('1=1 AND isspecial=0 AND tid='.$val['Id'])->order('ord ASC')->select();
		   }
		 } else {
		   $topmenu[$tk]['menu'] = [];
		 }
	   }
	 }
	 return $topmenu;
   }
   if( !$topmenu = cache('admintopmenu') ) {
	 $topmenu = db('adminauth')->field('Id,name,icon,isext,linkurl,isopen,title')->where('1=1 AND tid=0')->order('ord ASC')->select();
	 if ( $topmenu ) {
	   foreach( $topmenu as $tk=>$tv ) {
		 $tabid = $tv['Id'];
		 $mmenu = db('adminauth')->field('Id,name,icon,isext,linkurl,isopen,title')->where('1=1 AND tid='.$tabid)->order('ord ASC')->select();
		 if ( $mmenu ) {
		   $topmenu[$tk]['menu'] = $mmenu;
		   foreach ( $mmenu as $key=>$val ) {
			 $topmenu[$tk]['menu'][$key]['smenu'] = db('adminauth')->field('name,icon,isext,linkurl,title,Id')->where('1=1 AND isspecial=0 AND tid='.$val['Id'])->order('ord ASC')->select();
		   }
		 } else {
		   $topmenu[$tk]['menu'] = [];
		 }
	   }
	 }
	 cache('admintopmenu',$topmenu);
   }
   return $topmenu;
 }
 
 //获取我的权限列表
 function getAuth() {
   $loginstatue = model('AdminUser')->AdminLogin();
   if($loginstatue['status']){
	 $adminauth  = session('adminauth');
	 $admindepid = $adminauth['admindepid'];
	 $auth = db('admindepartment')->field('auth')->where(array('Id'=>$admindepid))->find();
	 if ( $auth ) {
	  return $auth['auth'];
	 } else {
	  return FALSE;
	 }
   } else {
	 return false;
   }
 }
 
 //获取配置
 function getSeting(){
   $sys_info = array();
   $count    = 0;
   $sys      = db('systemconfig')->field('c_site')->where(array('Id'=>1))->find();
   $sys_info['debug']         = config('app_debug');
   $sys_info['app_trace']     = config('app_trace');
   $sys_info['loginwarning']  = session("loginWarning");
   $sys_info['passWarning']   = session("passWarning");
   $sys_info['c_site']        = ($sys) ? $sys['c_site'] : 0;
   if ( config('app_trace') )           $count ++;
   if ( session("loginWarning") !='' )  $count ++;
   if ( session("passWarning") !='' )   $count ++;
   if ( !$sys || $sys['c_site'] )       $count ++;
   $sys_info['count']         = $count;
   return $sys_info;
 }
 
 //获取数据备份
 function getBackup(){
   $isback     = false;
   $backArr    = array();
   $databackup = getdataup(config("db_backup"));
   $time       = 0;
   if ( $databackup ) {
     foreach( $databackup as $dup ) {
	   $backArr[] = filectime($dup);
     }
     if( count($backArr) > 0 ) sort($backArr);
     $time  = ceil((time() - ( isset($backArr[count($backArr)-1]) ? $backArr[count($backArr)-1] : 0 ) ) / 86400);
   }
   if ( $time > config('backuptime') ) $isback = true;
   if ( count($backArr) ==0 )     $isback = true;
   if ( config('backuptime') == 0 )    $isback = false;
   $tablist  = model('Baksql')->getTables();
   return array('isback'=>$isback,'tablist'=>$tablist);
 }
 
 //获取文件
 function getfile($path){
   if ( $path == '' || !is_dir( $path ) ) return false;
   global $dataup;
   foreach( scandir($path) as $afile ){
	 if( $afile == '.' || $afile == '..' ) continue; 
	 if( is_dir($path.'/'.$afile )) { 
	   getfile($path.'/'.$afile);
	 } else { 
	   $dataup[]=$path.'/'.$afile;
	 } 
   } 
 }
 
 //获取备份
 function getdataup($path){
   global $dataup;
   getfile($path);
   return (count($dataup)) ? array_unique($dataup) : array();
 }
 
 //获取大小
 function getAppSize($path=''){
   $totalsize  = 0;
   $totalcount = 0;
   $dircount   = 0;
   $handle = opendir ($path);
   if ($handle){
	 while (false !== ($file = readdir($handle))){
	   $nextpath = $path . '/' . $file;
	   if ($file != '.' && $file != '..' && !is_link ($nextpath)){
		 if (is_dir ($nextpath)){
		   $dircount++;
		   $result      = getAppSize($nextpath);
		   $totalsize  += $result['size'];
		   $totalcount += $result['count'];
		   $dircount   += $result['dircount'];
		 }elseif (is_file ($nextpath)){
		   $totalsize += filesize ($nextpath);
		   $totalcount++;
		 }
	   }
	 }
   }
   closedir ($handle);
   $total['size']     =  $totalsize;
   $total['count']    =  $totalcount;
   $total['dircount'] = $dircount;
   $total['file']     = $path;
   return $total;
 }
 
 //tdk
 function modTdk($table,$id) {
   return '<span class="tdkmodal" data-id="'.$id.'" data-tables="'.$table.'">'.faicon('gears').'</span>';
 }
 
 //seo
 function sendSeo($uri = '',$isauto = 0){
   if ( $uri != '' ) {
     $conf = db('seoconf')->field('*')->where('1=1 AND Id=1')->find();
	 if ( !$conf['isauto'] && $isauto ) return array('state'=>0,'msg'=>'');
	 if ( !$conf ) return array('state'=>0,'msg'=>'未获取到有效的配置信息..');
	 if ( $conf['baiduurl'] == '' && $conf['mipurl'] == '' ) return array('state'=>0,'msg'=>'请先配置您的SEO配置信息');
	 $senduri = array();
	 if ( is_array( $uri ) ) {
	   foreach( $uri as $uv ) {
	     $senduri[] = $uv;
	   }
	 } else if ( is_int( $uri ) ){
	   if ( $conf['articleurl'] == '' && $conf['marticleurl'] == '' ) return array('state'=>0,'msg'=>'请先配置推送文章的链接');
	   if ( $conf['articleurl'] !='' )  $senduri[] = str_replace('[id]',$uri,$conf['articleurl']);
	   if ( $conf['marticleurl'] !='' ) $senduri[] = str_replace('[id]',$uri,$conf['marticleurl']);
	   if ( $isauto && !$conf['isauto'] ) return array('state'=>0,'msg'=>'未开启自动推送');
	 } else {
	   $senduri[] = $uri;
	 }
	 if ( count( $senduri ) == 0 ) return array('state'=>0,'msg'=>'推送的链接为空，请重新提交吧~');
	 $senduri = array_unique($senduri);
	 $mtip    = $tips = $tips2 = '';
	 if ( $conf['baiduurl'] !='' ) {
	   $res   = sendUrl($senduri,$conf['baiduurl']); //推送到百度
	   $tips  = ($res['success']) ? '百度推送成功，今日百度推送还可以推送链接'.$res['count'].'条<br>' : '百度推送失败:'.$res['msg'].'今日百度推送还可以的推送链接'.$res['count'].'条<br>';
	 }
	 if ( $conf['mipurl'] !='' ) {
	   $res2  = sendUrl($senduri,$conf['mipurl']);   //MIP URL
	   $tips2 = ($res2['success']) ? '百度MIP推送成功，今日MIP推送还可以推送链接'.$res2['count'].'条<br>' : '百度推送失败:'.$res2['msg'].'今日MIP推送还可以的推送链接'.$res2['count'].'条<br>';
	 }
	 if ( $isauto ) {
       return array('state'=>1,'msg'=>'已经同步推送至百度收录');
	 } else {
	   return array('state'=>1,'msg'=>$tips.$tips2);
	 }
   } else {
     return array('state'=>0,'msg'=>'推送的链接为空..');
   }
 }
 
 function sendUrl( $data='',$url='' ) {
   if ( $data !='' && $url !='' ) {
     $ch      = curl_init();
	 $options =  array(
       CURLOPT_URL => $url,
       CURLOPT_POST => true,
       CURLOPT_RETURNTRANSFER => true,
       CURLOPT_POSTFIELDS => implode("\n", $data),
       CURLOPT_HTTPHEADER => array('Content-Type: text/plain'),
     );
	 curl_setopt_array($ch, $options);
	 $result = curl_exec($ch);
	 $res    = json_decode($result);
	 return array('success'=>$res->success,'msg'=>$res->not_valid[0],'count'=>$res->remain);
   } else {
     return array('success'=>0,'msg'=>'','count'=>'[未获取]');
   }
 }

 function get_client_ip(){
   return request()->ip();
 }
 
 function piclist( $current_path = '' ){
	if ( $current_path == '' ) return false;
    $file_list = array();
	$ext_arr   = array('gif', 'jpg', 'jpeg', 'png', 'bmp');
	if ( !is_dir( $current_path ) ) return false;
	$handle = opendir($current_path);
	if ($handle) {
		$i = 0;
		while (false !== ($filename = readdir($handle))) {
			if ($filename{0} == '.') continue;
			$file = $current_path . $filename;
			if (is_dir($file)) {
				$file_list[$i]['is_dir'] = true; //是否文件夹
				$file_list[$i]['has_file'] = (count(scandir($file)) > 2); //文件夹是否包含文件
				$file_list[$i]['filesize'] = 0; //文件大小
				$file_list[$i]['is_photo'] = false; //是否图片
				$file_list[$i]['filetype'] = ''; //文件类别，用扩展名判断
			} else {
				$file_list[$i]['is_dir'] = false;
				$file_list[$i]['has_file'] = false;
				$file_list[$i]['filesize'] = 0;//filesize($file);
				$file_list[$i]['dir_path'] = '';
				$file_ext = strtolower(pathinfo($file, PATHINFO_EXTENSION));
				$file_list[$i]['is_photo'] = in_array($file_ext, $ext_arr);
				$file_list[$i]['filetype'] = $file_ext;
			}
			$file_list[$i]['filename'] = $current_path.'/'.$filename; //文件名，包含扩展名
			$file_list[$i]['datetime'] = date('Y-m-d H:i:s'); //文件最后修改时间
			$i++;
		}
		closedir($handle);
	}
	$newlist = array();
	if ( count( $file_list ) > 0 ) {
	  foreach ( $file_list as $key=>$val ) {
	    if ( $val['filename'] !='' ) $newlist[] = $val['filename'];
	  }
	}
	return $newlist;
 }
 
 //获取类别
 function tpltype(){
   return model('Bhtpl')->gettpltype();
 }
