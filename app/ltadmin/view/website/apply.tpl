<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">报名信息管理</h3>
  </div>
  <div class="panel-body">
  <if condition="$data neq ''">
  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall('top')}</td>
     <td width="60" align="center" valign="middle">序号</td>
     <td width="120" align="center" valign="middle">专业类别</td>
     <td width="120" align="center" valign="middle">简章</td>
     <td width="120" align="center" valign="middle">姓名</td>
     <td width="120" align="center" valign="middle">性别</td>
     <td width="120" align="center" valign="middle">手机</td>
     <td width="120" align="center" valign="middle">邮箱</td>
     <td width="120" align="center" valign="middle">学历</td>
     <td width="120" align="center" valign="middle">毕业日期</td>
     <td width="120" align="center" valign="middle">地址</td>
     <td width="120" align="center" valign="middle">是否处理</td>
     <td width="100" align="center" valign="middle">提交日期</td>
     <td width="100" align="center" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
    <tr class="maintr">
     <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i)}</td>
     <td align="center" valign="middle">{$dshow['pageno']+$i}</td>
     <td align="center" valign="middle">{$obj['degree']==0 ? '无' :'专业硕士'}</td>
     <td align="center" valign="middle">{$obj['simpletext']}</td>
     <td align="center" valign="middle">{$obj['name']}</td>
     <td align="center" valign="middle">{$obj['sex']==0 ? '未填' :($obj['sex']==1 ? '男' : '女')}</td>
     <td align="center" valign="middle">{$obj['phone']}</td>
     <td align="center" valign="middle">{$obj['email']}</td>
     <td align="center" valign="middle">{$obj['education']}</td>
     <td align="center" valign="middle">{$obj['enddate']}</td>
     <td align="center" valign="middle">{$obj['area']}</td>
     <td align="center" valign="middle">{:modattr($obj['Id'],$obj['enabled'],'apply','enabled',array('处理','取消'))}</td>
     <td align="center" valign="middle">{:showdate($obj['date'])}</td>
     <td align="center" valign="middle">{:btn(array('vals'=>'查看','icon'=>'comment','round'=>1,'tips'=>'点击查看报名数据','url'=>url('applyshow','id='.$obj['Id'])))}</td>
    </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall()}</td>
    <td colspan="15" align="left" valign="middle">
	{:btn(array('vals'=>'删除','type'=>'submit','icon'=>'trash','round'=>1,'name'=>'deldata','scene'=>'danger'))}&nbsp;
    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，任何形式删除的数据都无法找回，请谨慎操作！</font>
    </td>
   </tr>
   </table>
   </form>
   <else/>
    <div class="alert alert-danger">暂无留言资料。</div>
   </if>
 </div>
 </div>
</block>