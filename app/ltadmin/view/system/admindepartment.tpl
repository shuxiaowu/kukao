<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading">
  <h3 class="panel-title pull-left">部门列表</h3>
  <div class="pull-right mar10">{:btn(array('vals'=>'添加部门','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>url('system/admindepartmentadd')))}</div>
 </div>
 <div class="panel-body">
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">序号</td>
     <td width="160" align="left" valign="middle">部门名称</td>
     <td width="100" align="center" valign="middle">权限数量</td>
     <td width="100" align="center" valign="middle">部门排序</td>
     <td width="120" align="center" valign="middle">添加时间</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle">{$obj['topic']}</td>
    <td align="center" valign="middle"><php>$auth = ($obj['auth']!='') ? explode(",",$obj['auth']) : array();echo count($auth).' 个';</php></td>
    <td align="center" valign="middle">{:modord($obj['ord'],$obj['Id'],$dshow['table'])}</td>
    <td align="center" valign="middle">{:showdate($obj['date'])}</td>
    <td align="left" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','round'=>1,'tips'=>'点击编辑数据','url'=>url('system/admindepartmentmod','id='.$obj['Id'])))}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall()}</td>
    <td height="35" colspan="6" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','round'=>1,'icon'=>'trash','scene'=>'danger'))}
    {$dshow['pageshow']}
    </td>
   </tr>
   </table>
   </form>
 </div>
  <div class="panel-footer">{:icon('warning-sign')} 提示，删除无法恢复，请谨慎操作。</div>
 </div>
</block>