<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading">
  <h3 class="panel-title">{$dshow['day']} 访问统计量详情</h3>
 </div>
 <div class="panel-body">
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="60" align="left" valign="middle">序号</td>
     <td align="left" valign="middle">访问页面</td>
     <td width="400" align="left" valign="middle">页面来源</td>
     <td width="100" align="center" valign="middle">浏览器</td>
     <td width="100" align="center" valign="middle">访问IP</td>
     <td width="100" align="center" valign="middle">访问次数</td>
     <td width="160" align="center" valign="middle">访问时间</td>
     <td width="100" align="center" valign="middle">访问时长</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle"><a href="{$obj['action']}">{:icon('link')} {:htmlspecialchars($obj['action'])}</a></td>
    <td align="left" valign="middle">
    <if condition="$obj['refer'] neq ''">
     <input type="text" value="{:htmlspecialchars($obj['refer'])}" class="hidetext" style="width:400px;"></a>
    <else/>
     <a href="javascript:void(0)">{:icon('link')} --</a>
    </if>
    </td>
    <td align="center" valign="middle">{$obj['agent']}</td>
    <td align="center" valign="middle">{$obj['ip']}</td>
    <td align="center" valign="middle">{$obj['hit']}</td>
    <td align="center" valign="middle">{:date("Y-m-d H:i:s",$obj['stime'])}</td>
    <td align="center" valign="middle">{$obj['timeconsuming']}</td>
   </tr>
   </volist>
   <if condition="$dshow['pageshow'] neq ''"> 
   <tr>
    <td height="35" colspan="8" align="left" valign="middle">
    {$dshow['pageshow']}
    </td>
   </tr>
   </if>
   </table>
   </form>
 </div>
 </div>
</block>