<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">添加广告信息</h3>
  </div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return sysadv(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">广告标题：</td>
    <td height="32" align="left">{:inputs(array('type'=>'text','icon'=>'flag','place'=>'广告标题','name'=>'topic','tips'=>'输入广告标题'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告链接：</td>
     <td height="32" align="left">{:inputs(array('type'=>'text','scene'=>'link','place'=>'广告链接','name'=>'linkurl','tips'=>'输入广告链接'))}</td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">广告备注：</td>
     <td height="32" align="left">{:inputs(array('type'=>'text','name'=>'remark'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告位置：</td>
     <td height="32" align="left">{:dropdown($advtype,0,'选择广告位置','ctag')}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic(array('tips'=>'请上传与属性一致的图片。','iswater'=>1,'w'=>1920,'h'=>400))}</td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">图片宽高：</td>
     <td height="32" align="left">
     {:inputs(array('type'=>'text','units'=>'px','name'=>'picwidth','val'=>0,'width'=>'20'))} 
     {:inputs(array('type'=>'text','units'=>'px','name'=>'picheight','val'=>0,'width'=>'20'))} 
     </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox()} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告排序：</td>
     <td height="32" align="left">{:inputs(array('type'=>'text','scene'=>'ord','name'=>'ord','val'=>0))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
</block>