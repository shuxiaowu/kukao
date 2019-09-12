<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">TDK管理</h3>
   <div class="pull-right mar10">{:btn(array('vals'=>'添加资料','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>url('website/tdkadd')))}</div>
  </div>
  <div class="panel-body">
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
 <if condition="$data neq ''">
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">ID</td>
     <td align="left" valign="middle">标题</td>
     <td width="140" align="left" valign="middle">备注</td>
     <td width="200" align="left" valign="middle">关键词</td>
     <td width="100" align="center" valign="middle">更新日期</td>
     <td width="100" align="center" valign="middle">资料操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$obj['Id']}</td>
    <td align="left" valign="middle">{:modField($obj['title'],$obj['Id'],'topic',$dshow['table'])}</td>
    <td align="left" valign="middle">{:modField($obj['remark'],$obj['Id'],'remark',$dshow['table'])}</td>
    <td align="left" valign="middle">{:modField($obj['keyword'],$obj['Id'],'keyword',$dshow['table'])}</td>
    <td align="center" valign="middle">{:showdate($obj['date'])}</td>
    <td align="center" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','round'=>1,'tips'=>'点击编辑数据','url'=>url('website/tdkmod','id='.$obj['Id'])))}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall(2)}</td>
    <td height="35" colspan="7" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','round'=>1,'icon'=>'trash','scene'=>'danger'))}
    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，任何形式删除的数据都无法找回，请谨慎操作！</font>
    {$dshow['pageshow']}
    </td>
   </tr>
   </table>
   </form>
   <else/>
    <div class="alert alert-danger">暂无资料，您可以点击添加按钮添加一条数据。</div>
   </if>
 </div>
 </div>
</block>