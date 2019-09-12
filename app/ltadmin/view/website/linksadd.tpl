<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">添加资料</h3></div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return syslink(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">资料名称：</td>
    <td height="32" align="left">{:inputs(array('name'=>'topic','scene'=>'topic','tips'=>'资料名称（*必填）'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">链接地址：</td>
     <td height="32" align="left">{:inputs(array('name'=>'linkurl','scene'=>'link','place'=>'链接地址，跳转链接','tips'=>'链接地址，跳转链接'))}</td>
   </tr>
    <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic(array('tips'=>'点击上传图片'))}</td>
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
     <td height="32" align="right" valign="middle">
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