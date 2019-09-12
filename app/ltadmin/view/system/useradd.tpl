<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading"><h3 class="panel-title pull-left">添加管理员</h3></div>
 <div class="panel-body">
  <form name="adminform" method="post" action="{:url('system/createuser')}" onSubmit="return sysadminuser(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">登录ID：</td>
    <td height="32" align="left">{:inputs(array('name'=>'user','icon'=>'user','width'=>18,'add'=>'ckuser','place'=>'登录ID','tips'=>'必填'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">姓名：</td>
     <td height="32" align="left">{:inputs(array('name'=>'name','icon'=>'user','width'=>18,'place'=>'姓名'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">选择部门：</td>
     <td height="32" align="left">{:dropdown($admindep,0,'请选择一个部门','depid')}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">登录密码：</td>
     <td height="32" align="left">{:inputs(array('type'=>'password','name'=>'pass','icon'=>'log-out','width'=>30,'place'=>'登录密码','tips'=>'长度大于6位，支持大小写'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">重复密码：</td>
     <td height="32" align="left">{:inputs(array('type'=>'password','name'=>'notpass','icon'=>'log-out','place'=>'重复密码','width'=>30,'tips'=>'长度大于6位，支持大小写'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
 <script type="text/javascript">
  //
  function sysadminuser(td){
    if($.trim(td.user.value).length<2){swal('请输入后台管理员的登录ID','不得少于2位','error');return false;}
	if($.trim(td.name.value).length<2){swal('请输入后台管理员的姓名','不得少于2位','error');return false;}
	if($.trim(td.pass.value).length<6){swal('请输入后台管理员的登录密码','不得少于6位','error');return false;}
	if(td.pass.value!=td.notpass.value){swal('密码与确认密码不一致','请重新输入','error');return false;}
  }
  //检测用户名是否可用
  $(".ckuser").on("blur",function(e){
    var user = $.trim($(this).val());
	if(user!=''){
	   $.post('{:url("Admin/ckuser")}',{'user':user},function(data){
		  if(data==1){
		   $(".input-group").eq(0).removeClass('has-error').addClass('has-success');
		   $(".glyphicon").eq(0).removeClass('glyphicon-remove');
		   $(".glyphicon").eq(0).removeClass('glyphicon-user').addClass('glyphicon-ok');
		 }else if(data==0){
		   $(".input-group").eq(0).removeClass('has-success').addClass('has-error');
		   $(".glyphicon").eq(0).removeClass('glyphicon-remove');
		   $(".glyphicon").eq(0).removeClass('glyphicon-user').addClass('glyphicon-remove');
		 }else{
		   swal(data,'','error');return false;
		 }
	   },'json');
	}else{
	  $(".u-result").html('<font class="text-danger"><span class="glyphicon glyphicon-remove-circle"></span> 请输入管理员登录ID</font>');
	}
  });
 </script>
</block>