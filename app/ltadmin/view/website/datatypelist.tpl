<extend name="public/common" />

<block name="main">

 <div class="pubmain">

  <div class="panel-heading">

   <h3 class="panel-title pull-left">类别管理</h3>

   <div class="pull-right mar10">{:btn(array('vals'=>'添加类别','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>url('website/datatypeadd','tables='.$dshow['table'].'&sty='.$sty).'?index_id='.$num_index))}</div>

  </div>

  <div class="panel-body">

  <if condition="$data neq ''">

  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 

  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

   <tr class="active">

     <td width="45" align="center" valign="middle" height="37">{:ckall('top')}</td>

     <td width="60" align="left" valign="middle">序号</td>

     <td align="left" valign="middle">类别名称</td>

     <td width="85" align="center" valign="middle">类别排序</td>

     <td width="120" align="center" valign="middle">启用</td>

     <td width="100" align="center" valign="middle">更新日期</td>

     <td width="100" align="center" valign="middle">操作</td>

   </tr>

  <volist name="data" id="obj">

  <tr class="maintr">

    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>

    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>

    <td align="left" valign="middle">{:modTdk($dshow['table'],$obj['Id'])} {:modField($obj['topic'],$obj['Id'],'topic',$dshow['table'])}</td>

    <td align="center" valign="middle">{:modord($obj['ord'],$obj['Id'],$dshow['table'])}</td>

    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['enabled'],$dshow['table'])}</td>

    <td align="center" valign="middle">{:date("Y-m-d",strtotime($obj['date']))}</td>

    <td align="center" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','round'=>1,'tips'=>'点击编辑数据','url'=>url('datatypemod','tables='.$dshow['table'].'&id='.$obj['Id']).'?index_id='.$num_index))}

    </td>

   </tr>

  </volist>

  <tr>

    <td height="37" align="center" valign="middle">{:ckall()}</td>

    <td colspan="7" align="left" valign="middle">

	 {:btn(array('vals'=>'删除','type'=>'submit','round'=>1,'icon'=>'trash','name'=>'deldata','scene'=>'danger'))}&nbsp;

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

 <include file="public/tdk" />

</block>

