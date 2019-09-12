<extend name="public/common" />

<block name="main">

 <div class="pubmain">

  <div class="panel-heading">

   <h3 class="panel-title pull-left">资料管理</h3>

   <div class="pull-right mar10">{:btn(array('vals'=>'添加资料','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>url('website/dataadd','sty='.$sty.'&tables='.$dshow['table'].'&martables='.$dshow['martable']).'?index_id='.$num_index))}</div>

  </div>

 <div class="panel-body">

  

 <form name="pubserch" method="get" action=""> 

  <div class="search">

   资料名称：<input type="text" class="text" name="topic" placeholder="资料名称" style="width:150px;">

   &nbsp;资料分类：{:dropdown($dshow['mdata'])}

   &nbsp;是否启用：{:dropdown(1,0,'请选择','enabled')}

   &nbsp;是否置顶：{:dropdown(2,0,'请选择','istop')}

   <input type="hidden" value="{$dshow['table']}" name="tables">

   <input type="hidden" value="{$dshow['martable']}" name="martables">

   <input type="hidden" value="{$sty}" name="sty">

   &nbsp;{:btn(array('vals'=>'查询','type'=>'submit','icon'=>'search','name'=>'searchdata','round'=>1,'scene'=>'primary'))}

  </div>

  </form>

  <div class="ui-block"></div>

  <if condition="$data neq ''">

  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 

  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

   <tr class="active">

     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>

     <td width="60" align="left" valign="middle">序号</td>

     <td align="left" valign="middle">资料名称</td>

     <td width="150" align="left" valign="middle">所属类别</td>

     <td width="85" align="center" valign="middle">资料排序</td>

     <td width="110" align="center" valign="middle">资料置顶</td>

     <td width="120" align="center" valign="middle">资料启用</td>

     <td width="120" align="center" valign="middle">更新日期</td>

     <td width="140" align="center" valign="middle">资料操作</td>

   </tr>

   <volist name="data" id="obj">

   <tr class="maintr">

    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>

    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>

    <td align="left" valign="middle">

     <if condition="$obj['pic'] neq ''">

      <a href="javascript:void(0)"{:imgshow($obj['pic'])}>{:icon('picture')}</a>

     </if>

     {:modField($obj['topic'],$obj['Id'],'topic',$dshow['table'])}

     </td>

    <td align="left" valign="middle">{$obj['inftopic']}</td>

    <td align="center" valign="middle">{:modord($obj['ord'],$obj['Id'],$dshow['table'])}</td>

    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['istop'],$dshow['table'],'istop',array('置顶','取消'))}</td>

    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['enabled'],$dshow['table'])}</td>

    <td align="center" valign="middle">{:showdate($obj['date'])}</td>

    <td align="center" valign="middle">

     <a href="javascript:void(0)" data-url="{:url('Website/article','id='.$obj['Id'].'&tables='.$dshow['table'])}" data-title="{$obj['topic']}" class="showdata">

      {:btn(array('vals'=>'预览','icon'=>'globe','scene'=>'success','round'=>1,'tips'=>'点击预览数据'))}

     </a>

     {:btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','round'=>1,'url'=>url('website/datamod','tables='.$dshow['table'].'&martables='.$dshow['martable'].'&id='.$obj['Id']).'?index_id='.$num_index))}

    </td>

   </tr>

   </volist>

   <tr>

    <td height="37" align="center" valign="middle">{:ckall(2)}</td>

    <td height="35" colspan="8" align="left" valign="middle">

    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','round'=>1,'icon'=>'trash','scene'=>'danger'))}

    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，任何形式删除的数据都无法找回，请谨慎操作！</font>

    {$dshow['pageshow']}

    </td>

   </tr>

   </table>

   </form>

   <else/>

    <div class="alert alert-danger">栏目下暂无资料，您可以点击添加按钮添加一条数据。</div>

   </if>

 </div>

 </div>

 

  <!--show data modal-->

 <div class="modal fade" id="modal-show">

  <div class="modal-dialog modal-lg">

    <div class="modal-content">

      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

        <h4 class="modal-title">--</h4>

      </div>

      <div class="modal-body">

        <iframe name="" width="100%" height="500" src="" frameborder="0" id="show-href"></iframe>

      </div>

      <div class="modal-footer">

        <button type="button" class="btn btn-danger btn-rounded btn-sm" data-dismiss="modal">{:icon('off')} 关闭</button>

      </div>

    </div>

  </div>

 </div>

 <!--end-->

 <script type="text/javascript">

   $(".showdata").click(function(e) {

	 $('#modal-show').modal("show");

	 $("#modal-show .modal-title").text($(this).data("title"));

	 $("#show-href").attr('src',$(this).data("url"));

  });

 </script>

</block>