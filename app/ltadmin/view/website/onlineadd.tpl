<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title">添加客服资料</h3>
  </div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return sysonline(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">客服名称：</td>
    <td height="32" align="left">{:inputs(array('name'=>'topic','width'=>24,'icon'=>'user','place'=>'客服名称','tips'=>'客服名称（*必填）'))}</td>
   </tr>
   <tr>
    <td width="10%" height="32" align="right" valign="middle">客服账号：</td>
    <td height="32" align="left">{:inputs(array('name'=>'amount','place'=>'客户账户，QQ号码','width'=>24,'icon'=>'user','tips'=>'客服账号（*必填）'))}</td>
   </tr>
   <tr class="hide">
    <td width="10%" height="32" align="right" valign="middle">微信号码：</td>
    <td height="32" align="left">{:inputs(array('name'=>'weixin','icon'=>'qrcode','place'=>'微信号码','width'=>24,'tips'=>'微信号码'))}</td>
   </tr>
   <tr class="hide">
    <td width="10%" height="32" align="right" valign="middle">手机号码：</td>
    <td height="32" align="left">{:inputs(array('name'=>'phone','icon'=>'phone','place'=>'手机号码','width'=>20,'tips'=>'手机号码'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">客服排序：</td>
     <td height="32" align="left">{:inputs(array('name'=>'ord','scene'=>'ord'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;<input type="hidden" value="{$tables}" name="tables"></td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
</block>