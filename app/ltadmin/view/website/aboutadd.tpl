<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">添加资料</h3>
  </div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">资料标题：</td>
    <td height="32" align="left">{:inputs(array('name'=>'topic','scene'=>'topic','tips'=>'资料标题（*必填）'))}</td>
   </tr>
   <tr class="hide">
    <td width="10%" height="32" align="right" valign="middle">资料配图：</td>
    <td height="32" align="left">{:uppic(array('tips'=>'没有要求可以不用上传'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料简介：</td>
     <td height="32" align="left">{:inputs(array('name'=>'intro','type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料内容：</td>
     <td height="32" align="left">{:inputs(array('name'=>'content','type'=>'editor'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面标题：</td>
     <td height="32" align="left">{:inputs(array('name'=>'title','scene'=>'title'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">关键词：</td>
     <td height="32" align="left">{:inputs(array('name'=>'keyword','scene'=>'key'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left">{:inputs(array('name'=>'metades','scene'=>'des'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料排序：</td>
     <td height="32" align="left">{:inputs(array('name'=>'ord','scene'=>'ord'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;
     <input type="hidden" value="{$tables}" name="tables">
     <input type="hidden" value="{$sty}" name="sty">
     </td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
</block>