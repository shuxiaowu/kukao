<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">资料编辑</h3></div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return systdk(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
     <td height="32" width="10%" align="right" valign="middle">备注：</td>
     <td height="32" align="left">{:inputs(array('name'=>'remark','width'=>30,'val'=>$data['remark'],'place'=>'页面备注'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面标题：</td>
     <td height="32" align="left">{:inputs(array('name'=>'title','val'=>$data['title'],'scene'=>'title'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">关键词：</td>
     <td height="32" align="left">{:inputs(array('name'=>'keyword','val'=>$data['keyword'],'scene'=>'key'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left">{:inputs(array('name'=>'metades','val'=>$data['metades'],'scene'=>'des'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;
     <input type="hidden" value="{:dates()}" name="date">
     <input type="hidden" value="{$data['Id']}" name="id">
     </td>
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
 <script>
  function systdk(td) {
    if ( td.title.value == '' ) {
	  swal('请输入页面标题','','error');
	  return false;
	}
  }
 </script>
</block>