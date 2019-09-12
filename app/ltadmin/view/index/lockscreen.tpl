<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="{:config('devcompany')} {:config('admin_version')}">
 <meta name="keywords" content="{:config('devcompany')} {:config('admin_version')}">
 <meta name="author" content="jxbh">
 <title>{$title} - {:config('devcompany')}</title>
<style>
body{ font-size:12px;margin:0; padding:0;background:#273238;font-family:"微软雅黑"; }
div,input{margin:0; padding:0;}
.lockscreen{ width:535px; height:140px; position:fixed; top:50%; left:50%; margin-left:-267px; margin-top:-70px;}
.bhface{ width:140px; height:140px; background:#1b2226 url('__img__/logo/adminlogo.png') no-repeat center center; background-size:80%; border-radius:50%; border:solid 10px #1f292e; float:left; margin-right:20px; cursor:pointer; position:relative;}
.mpass{ width:260px; height:38px; border:solid 1px #3e4142; background:none; outline:none; padding-left:10px; color:#777;font-family:"微软雅黑";}
p.h2{ font-size:14px; color:#fff; margin-top:10px;}
p.tips{ font-size:12px; color:#979898; line-height:20px;}
.error{ color:#2c2e2f;}
.btn-login{ width:76px; height:40px; line-height:37px; border:solid 1px #3e4142; background:none; cursor:pointer; color:#fafafa;font-family:"微软雅黑"; position:relative; top:1px; outline:none;}
.ui-zoom1{z-index:8;top:0px;left:0px;width:140px;height:140px;border-radius:50%;background:rgba(255,255,255,0.2);position:absolute;opacity:0;-webkit-animation:zoom 4s .3s infinite linear; display:none;}
@keyframes zoom{0%{-webkit-transform:scale(0.8);opacity:0}50%{-webkit-transform:scale(1);opacity:1}100%{-webkit-transform:scale(1.2);opacity:0.2}}
@-webkit-keyframes zoom{0%{-webkit-transform:scale(0.8);opacity:0}50%{-webkit-transform:scale(1);opacity:1}100%{-webkit-transform:scale(1.2);opacity:0.2}}
.bhlist-input{ position:relative;}
</style>
</head>
<body>
   <div class="lockscreen">
     <div class="bhface"><div class="ui-zoom1"></div></div>
     <div class="bhlist">
       <p class="h2">欢迎您回来，{$lockrealname} ！</p>
       <p class="tips">请您输入 {$lockrealname} 的登录密码验证。</p>
       <p class="error">tips</p>
       <div class="bhlist-input">
         <input type="password" name="pass" placeholder="密码" class="mpass">
         <button class="btn-login" type="button">登 录</button>
       </div>
     </div>
   </div>
 <script type="text/javascript" src="__js__/jquery.min.js"></script>
 <script type="text/javascript">
   $(".btn-login").click(function(e) {
	 var user = '{$lockuser}';
     var pass = $.trim($(".mpass").val());
	 if ( pass == '' ) { $(".error").css('color','#ecde2d').text('请输入您的登录密码'); setTimeout(function(){$(".error").css('color','#2c2e2f').text('tips'); },2000); return false; } 
	 var $this = $(this);
	 $this.text('验证中').attr('disabled',true);
	 $.post('{:url("Index/ajaxLock")}',{'user':user,'pass':pass},function(data){
	   $this.text('登录').attr('disabled',false);
	   if ( data.state == 1) {
	     window.location.href = "{:url('index/index')}";
	   } else {
	     $(".error").css('color','#ecde2d').text(data.msg); setTimeout(function(){$(".error").css('color','#2c2e2f').text('tips'); },2000); return false; 
	   }
	 },'json');
   });
  document.onkeydown = function(e) {
    var theEvent = e || window.event;
    var code = theEvent.keyCode || theEvent.which|| theEvent.charCode;
    if (code == 13) {
	  $(".btn-login").click();
	}
  }
  setTimeout(function(){ $(".ui-zoom1").show(); },3000);
 </script>
</body>
</html>