<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 Error</title>
<link rel="stylesheet" href="<?php echo root().'/public/home/css';?>/error.css">
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
 <div class="bh-error">
    <div class="bh-errorbg" style="border-bottom:solid 1px #66cac4;"><span class="success"><font color="#7dcced">4</font><font color="#f47f7d">0</font><font color="#66cac4">4</font></span></div>
    <div class="bh-tips">PAGE NOT FOUND</div>
    <div class="bh-notice">很抱歉，你访问的页面不存在输入地址有误或该地址已被删除，你可以点击下面的返回首页按钮返回首页</div>
    <div class="bh-btngroup"> <a href="<?php echo url('home/index/index');?>" class="bh-backhome" style="background-color:#66cac4; border:solid 1px #66cac4;">返回首页</a>  <a href="javascript:history.back(-1)" class="bh-back">返回上一页</a></div>
 </div>
</body>
</html> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
 
<head>
 
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
<title>404-对不起！您访问的页面不存在</title>
 
<style type="text/css">
 
.head404{ width:580px; height:234px; margin:50px auto 0 auto; background:url(https://www.daixiaorui.com/Public/images/head404.png) no-repeat; }
 
.txtbg404{ width:499px; height:169px; margin:10px auto 0 auto; background:url(https://www.daixiaorui.com/Public/images/txtbg404.png) no-repeat;}
 
.txtbg404 .txtbox{ width:390px; position:relative; top:30px; left:60px;color:#eee; font-size:13px;}
 
.txtbg404 .txtbox p {margin:5px 0; line-height:18px;}
 
.txtbg404 .txtbox .paddingbox { padding-top:15px;}
 
.txtbg404 .txtbox p a { color:#eee; text-decoration:none;}
 
.txtbg404 .txtbox p a:hover { color:#FC9D1D; text-decoration:underline;}
 
</style>
 
</head>
 
 
 
<body bgcolor="#494949">
 
   	<div class="head404"></div>
 
   	<div class="txtbg404">
 
  <div class="txtbox">
 
      <p>对不起，您请求的页面不存在、或已被删除、或暂时不可用</p>
 
      <p class="paddingbox">请点击以下链接继续浏览网页</p>
 
      <p>》<a href="<?php echo url('home/index/index');?>">返回网站首页</a></p>
      <div class="notice">系统将在<span id="wait">{$wait}</span> 秒之后页面自动 <a id="href" href="{$url}" style="color:#189aff;">跳转</a> 到指定的页面，您还可以点击下面的按钮操作页面。</div>
    <p> <a href="{:url('home/index/index')}" class="backhome">返回首页</a>  <a href="javascript:history.back(-1)" class="back">返回上一页</a></p>
    </div>
  </div>
  <script type="text/javascript">
   (function(){
      var wait = document.getElementById('wait'),href = document.getElementById('href').href;
      var interval = setInterval(function(){
         var time = --wait.innerHTML;
         if(time <= 0) {
            location.href = href;
            clearInterval(interval);
         };
      }, 1000);
   })();
   </script> 
</body>
 
</html>