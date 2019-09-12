<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">客服管理</h3>
   <div class="pull-right mar10">{:btn(array('vals'=>'添加客服','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>url('website/onlineadd','tables='.$dshow['table'])))}</div>
  </div>
 <div class="panel-body"> 
 <if condition="$data neq ''">
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">序号</td>
     <td align="left" valign="middle">客服名称</td>
     <td width="200" align="left" valign="middle">客服账号</td>
     <td width="85" align="center" valign="middle">客服排序</td>
     <td width="120" align="center" valign="middle">是否启用</td>
     <td width="100" align="center" valign="middle">更新日期</td>
     <td width="100" align="center" valign="middle">客服操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle">{:modField($obj['topic'],$obj['Id'],'topic',$dshow['table'])}</td>
    <td align="left" valign="middle">{$obj['amount']}</td>
    <td align="center" valign="middle">{:modord($obj['ord'],$obj['Id'],$dshow['table'])}</td>
    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['enabled'],$dshow['table'])}</td>
    <td align="center" valign="middle">{:showdate($obj['date'])}</td>
    <td align="center" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','round'=>1,'tips'=>'点击编辑数据','url'=>url('website/onlinemod','tables='.$dshow['table'].'&id='.$obj['Id'])))}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall()}</td>
    <td height="35" colspan="7" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','icon'=>'trash','round'=>1,'scene'=>'danger'))}
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