<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading"><h3 class="panel-title">修改密码</h3></div>
 <form name="adminform" method="post" action="" class="panel-body form-horizontal form-padding padding-null" onSubmit="return modpass(document.adminform)" style="margin-top:20px;">
    <!--Text Input-->
    <div class="form-group">
        <label class="col-md-3 control-label" for="demo-text-input">登录ID：</label>
        <div class="col-md-9">
           {:inputs(array('name'=>'user','val'=>$adminauth['adminuser'],'disabled'=>1,'width'=>18))}
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label" for="demo-text-input">登录密码：</label>
        <div class="col-md-9">
           {:inputs(array('type'=>'password','name'=>'pass','place'=>'请输入您当前的登录密码','width'=>30))}
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label" for="demo-text-input">新密码：</label>
        <div class="col-md-9">
            {:inputs(array('type'=>'password','name'=>'newpass','place'=>'请输入您的新密码','width'=>30))}
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-md-3 control-label" for="demo-text-input">确认新密码：</label>
        <div class="col-md-9">
          {:inputs(array('type'=>'password','name'=>'notpass','place'=>'请输入确认新密码','width'=>30))}
        </div>
    </div>
    
    <div class="panel-footer">
        <div class="row">
           <div class="col-md-3"></div> <div class="col-md-9">{:btn(array('vals'=>'修改密码','size'=>3,'type'=>'submit','scene'=>'primary'))}</div>
        </div>
    </div>		            
 </form>
 </div>
 <script type="text/javascript">
  function modpass(td){
   if(td.pass.value.length<6){swal('请输入登录密码','不的少于6位','error');return false;}
   if(td.newpass.value.length<6){swal('请输入新密码','不的少于6位','error');return false;}
   if(td.newpass.value!=td.notpass.value){swal('密码与确认密码不一致','请重新输入','error');return false;}
  }
 </script>
</block>