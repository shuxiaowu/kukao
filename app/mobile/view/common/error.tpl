<!DOCTYPE html>
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
</html>