<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">编辑产品</h3></div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return syspro(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">产品名称：</td>
    <td height="32" align="left">{:inputs(array('name'=>'topic','scene'=>'topic','val'=>$data['topic'],'tips'=>'产品标题（*必填）'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品所属：</td>
     <td height="32" align="left">{:dropdownlink($dshow['mdata'],array('ctag'),array('promtag'),2,array(gtopic('proctag',$data['ctag']),gtopic('promtag',$data['mtag'])),array($data['ctag'],$data['mtag']))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic(array('pic'=>$data['pic'],'tips'=>'产品配图，300px*200px，没有要求可以不用上传！'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品简介：</td>
     <td height="32" align="left">{:inputs(array('name'=>'intro','val'=>$data['intro'],'type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品内容：</td>
     <td height="32" align="left">{:inputs(array('name'=>'content','val'=>$data['content'],'type'=>'editor'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面标题：</td>
     <td height="32" align="left">{:inputs(array('name'=>'title','val'=>$data['title'],'scene'=>'title'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面关键词：</td>
     <td height="32" align="left">{:inputs(array('name'=>'keyword','val'=>$data['keyword'],'scene'=>'key'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left">{:inputs(array('name'=>'metades','val'=>$data['metades'],'scene'=>'des'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否置顶：</td>
     <td height="32" align="left">{:checkbox($data['istop'],0,'istop')} <span class="text-warning"> 注：勾选表示置顶</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品排序：</td>
     <td height="32" align="left">{:inputs(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">发布日期：</td>
     <td height="32" align="left">{:inputs(array('name'=>'date','val'=>$data['date'],'scene'=>'date','width'=>'20','tips'=>'请按照 2017-01-01 08:00:00 格式改写发布日期'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$dshow['tables']}" name="tables">
     <input type="hidden" value="{$data['Id']}" name="id">
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
</block>