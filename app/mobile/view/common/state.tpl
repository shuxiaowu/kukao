<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统提示</title>
<link rel="stylesheet" href="__css__/error.css">
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
 <div class="bh-error">
 
   <?php switch ($code) {?>
        <?php case 1:?>
        <div class="bh-errorbg"><span class="success">SUCCESS</span></div>
        <div class="bh-tips"><?php echo (strip_tags($msg));?></div>
        <?php break;?>
        <?php case 0:?>
        <div class="bh-errorbg"><span class="error">ERROR</span></div>
        <div class="bh-tips"><?php echo (strip_tags($msg));?></div> 
        <?php break;?>
   <?php } ?>
    <div class="bh-notice">系统将在<span id="wait">{$wait}</span> 秒之后页面自动 <a id="href" href="{$url}" style="color:#189aff;">跳转</a> 到指定的页面，您还可以点击下面的按钮操作页面。</div>
    <div class="bh-btngroup"> <a href="{:url('home/index/index')}" class="bh-backhome">返回首页</a>  <a href="javascript:history.back(-1)" class="bh-back">返回上一页</a></div>
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