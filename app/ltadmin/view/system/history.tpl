<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading">
  <h3 class="panel-title">后台管理员登录记录</h3>
 </div>
 <div class="panel-body">
  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">序号</td>
     <td width="180" valign="middle">登录名</td>
     <td width="120" align="left" valign="middle">登录IP</td>
     <td align="left" valign="middle">登录时间</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle">{$obj['user']}</td>
    <td align="left" valign="middle">{$obj['ip']?:'--'}</td>
    <td align="left" valign="middle">{$obj['date']?:'--'}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall(2)}</td>
    <td height="35" colspan="4" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','round'=>1,'icon'=>'trash','scene'=>'danger','ban'=>1))}
    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，后台登录日志暂时不支持删除 ！</font>
    {$dshow['pageshow']}
    </td>
   </tr>
   </table>
   </form>
 </div>
 </div>
</block>