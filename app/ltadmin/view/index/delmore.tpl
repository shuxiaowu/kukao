<extend name="public/common" />
<block name="main">
 <div class="pubmain">
   <div class="panel-heading"><h3 class="panel-title">删除数据提醒</h3></div>
   <div class="panel-body">
    <if condition="$deltips eq ''">
     <div class="alert alert-info" style="margin:0 auto 10px auto;">
       <p>您本次一次性删除的数据较多，您确定要操作吗？</p>
       <p>点击确定按钮删除所选择的数据，删除无法恢复。</p>
       <p>点击返回按钮返回上一层重新操作。</p>
     </div>
     <form method="post" action="">
     <div style="margin:0px auto 20px auto; width:30%;">
       <input type="hidden" name="tables" value="{$tables}">
       <input type="hidden" name="ids" value="{$ids}">
       <input type="hidden" name="uri" value="{$uri}">
       <p class="text-warning"><input type="checkbox" value="1" id="delisshow" name="delisshow" class="m-checkbox"><label for="delisshow"></label> 下次操作删除数据不出现此提示请勾选此项，仅本次登录有效。</p>
       <button type="submit" name="send" value="删除" class="btn btn-block btn-danger">确定删除所选数据</button>
       <button type="submit" name="send" value="返回" class="btn btn-block btn-default">返回上一页</button>
     </div>
     </form>
     <else/>
       <div class="alert alert-info" style="margin:0 auto 10px auto;">
        {$deltips}
       </div>
       <script type="text/javascript">
        var uri = '{$uri}';
		setTimeout(function(){
		  window.location.href = uri;
		},1500);
       </script>
     </if>
     
   </div>
 </div>
</block>