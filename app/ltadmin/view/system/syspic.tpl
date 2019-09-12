<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  
  <div class="panel-heading">
   <h3 class="panel-title pull-left">图片管理器</h3>
   <div class="pull-right mar10">
      <div class="btn-group">
       {:btn(array('vals'=>'','size'=>3,'icon'=>'th-list','scene'=>$scene[0],'round'=>1,'url'=>url('system/syspic','act=1')))}
       {:btn(array('vals'=>'','size'=>3,'icon'=>'th','scene'=>$scene[1],'url'=>url('system/syspic','act=2')))}
       {:btn(array('vals'=>'','size'=>3,'icon'=>'folder-open','scene'=>$scene[2],'url'=>url('system/syspic','act=3')))}
       {:btn(array('vals'=>'统计','size'=>3,'icon'=>'signal','scene'=>'default','round'=>1,'tips'=>'统计文件夹内上传文件大小，文件夹数量，文件数量','dir'=>'bottom','add'=>'mysignal'))}
      </div>
   </div>
  </div>

  <div class="panel-body">
  
  <div class="alert alert-primary filesignal" style="display:none;">
   <p>统计路径：<b> {$upTotal['file']}</b></p>
   <p>统计大小：<b> {$upTotal['size']}</b></p>
   <p>　文件数：<b> {$upTotal['count']} 个</b></p>
   <p>　目录数：<b> {$upTotal['dircount']} 个</b></p>
  </div>
  
  <if condition="$act eq 1">
  <form name="publist" method="post" action="{:url('system/sysdelpic')}" onSubmit="return pubdel(document.publist)">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="30">{:ckall('top')}</td>
     <td width="35%" align="left" valign="middle">文件夹/图片名称</td>
     <td width="100" align="left" valign="middle">大小</td>
     <td width="150" align="left" valign="middle">上传时间</td>
     <td width="80" align="left" valign="middle">是否冗余</td>
     <td align="left" valign="middle">查看</td>
   </tr>
   <volist name="data" id="obj">
   <if condition="$obj['isou'] eq 1">
   <tr class="maintr">
   <else/>
   <tr class="maintr info">
   </if>
    <td align="center" valign="middle" height="25">
    <if condition="$obj['isou'] eq 1">
     {:ckbox($obj['pic'],$i-1,0,1)}
    <else/>
     {:ckbox($obj['pic'],$i-1,1)}
    </if>
    </td>
    <td align="left" valign="middle">{$obj['spic']}</td>
    <td align="left" valign="middle">{$obj['size']}</td>
    <td align="left" valign="middle">{$obj['time']}</td>
    <td align="left" valign="middle">
     <if condition="$obj['isou'] eq 1">
      <font color="green">正常</font>
     <else/>
      <font color="red">冗余</font>
     </if>
    </td>
    <td align="left" valign="middle">
     <div class="zomm-pic"><img src="{:root()}/{$obj['pic']}" data-action="zoom"></div>
    </td>
   </tr>
   </volist>
   <tr>
    <td align="center" valign="middle">{:ckall()}</td>
    <td height="35" align="left" valign="middle" colspan="5">
	 {:btn(array('vals'=>'删除','type'=>'submit','icon'=>'trash','name'=>'deldata','round'=>1,'scene'=>'danger'))}&nbsp;
     <font>冗余的图片默认勾选</font>
     {$dshow['pageshow']}
    </td>
   </tr>
  </table>
  </form>
  </if>
  
  <if condition="($act eq 2) OR ($act eq 4)">
  <form name="publist" method="post" action="{:url('system/sysdelpic')}" onSubmit="return pubdel(document.publist)">
  <volist name="data" id="obj">
      <div class="syspicshow">
       <div class="sysmypic"><img src="{:root()}/{$obj['pic']}" data-action="zoom"></div>
       <div class="sysmypic-foot">
	     <if condition="$obj['isou'] eq 1">
          <font color="green">正常</font>  {:ckbox($obj['pic'],$i-1,0,1)}
         <else/>
          <font color="red">冗余</font>  {:ckbox($obj['pic'],$i-1,1)}
         </if>
       </div>
      </div>
  </volist>
  <div style="height:10px; clear:both;"></div>
  <div class="delmostdiv" style="margin:5px auto 0px 0px; clear:both;">
   {:ckall(2).'&nbsp;选择(默认选择冗余图片)&nbsp;'.btn(array('vals'=>'删除','type'=>'submit','size'=>4,'round'=>1,'icon'=>'trash','name'=>'deldata','scene'=>'danger'))}
   {$dshow['pageshow']}
  </div>
  </form>
  </if>
  
  <if condition="$act eq 3">
   <volist name="file" id="fobj">
    <if condition="$fobj['count'] eq 0">
    <a href="javascript:void(0)">
    <else/>
    <a href="{:url('system/syspic','act=4&path='.$fobj['file'])}">
    </if>
    <div class="myfolder">
     <div class="myfilenum"><span>{$fobj['count']}</span></div>
     <div class="myicon">{:icon('folder-open')}</div>
     <div class="mytips">{$fobj['file']}</div>
    </div></a>
   </volist>
  </if>
  <script type="text/javascript">
    $(".mysignal").click(function(e) {
      if ($(".filesignal").is(":hidden")) {
	    $(".filesignal").show(500);
	  }    
   });
  </script>
  
 </div>
 <div class="panel-footer">{:icon('warning-sign')} 提示，任何图片删除都无法找回，建议只删除冗余的图片！</div>
 </div>
</block>