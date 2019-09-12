<!DOCTYPE html>
<html>
<head>
 <include file="public/meta" />
 <style>
   .panel-body{ line-height:200%; font-family:"微软雅黑";}
   .panel-body img{ max-width:600px; cursor:pointer; display:block; display:block; margin:5px auto 0px auto;}
 </style>
</head>
<body style="background:#fff;">
 <div class="panel" style="padding:0;">        
    <div class="panel-body">
      {$data['content']?:'<div class="alert">暂无显示资料!</div>'}
    </div>
    <div class="panel-footer">{:icon('warning-sign')} 提示，最终效果以前台显示为准.</div>
 <include file="public/footer" />
</body>
</html>
