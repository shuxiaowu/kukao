<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">添加栏目权限</h3></div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return sysauth(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目名称：</td>
     <td height="32" align="left">{:inputs(array('units'=>'注','name'=>'title','tips'=>'栏目名称','width'=>20,'place'=>'栏目名称'))}</td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目图标：</td>
     <td height="32" align="left" class="icontd">{:inputs(array('faicon'=>'code','name'=>'icon','add'=>'code','tips'=>'栏目图标','width'=>20,'place'=>'栏目图标'))}</td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">图标类型：</td>
     <td height="32" align="left" class="icontype">{:checkbox(1,0,'isext')} <span class="text-warning"> 注：勾选表示扩展图标</span> </td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目所属：</td>
     <td height="32" align="left">
      <div class="btn-group">
       {:btn(array('vals'=>'顶级栏目','size'=>3,'add'=>'lev1','scene'=>'primary'))}
       {:btn(array('vals'=>'次级栏目','size'=>3,'add'=>'lev2','scene'=>'default'))}
       {:btn(array('vals'=>'小栏目','size'=>3,'add'=>'lev3','scene'=>'default'))}
       </div>
     </td>
   </tr>
   <tr class="topmenu" style="display:none;">
     <td width="10%" height="32" align="right" valign="middle">选择栏目：</td>
     <td height="32" align="left">
       {:dropdown($topmenu,0,'选择顶级栏目','lid')}
       <div class="mmenu" style="background:#fff; min-height:30px; width:80%; padding:10px; margin:5px auto 0 0; border:dotted 1px #ddd; display:none;"></div>
     </td>
   </tr>
   
   <tr class="linktr" style="display:none;">
     <td width="10%" height="32" align="right" valign="middle">栏目链接：</td>
     <td height="32" align="left">{:inputs(array('faicon'=>'link','name'=>'linkurl','tips'=>'参数和方法名之间用,隔开 例如：Website/datalist,tables=information&sty=2','width'=>40,'place'=>'栏目链接 Website/datalist,tables=information&sty=2'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">栏目排序：</td>
     <td height="32" align="left">{:inputs(array('type'=>'text','scene'=>'ord','name'=>'ord','val'=>0))}</td>
   </tr>
   <tr class="importanttr" style="display:none;">
     <td height="32" align="right" valign="middle">是否重要：</td>
     <td height="32" align="left">
     {:checkbox(0,0,'isimportant')} <span class="text-warning"> 注：勾选表示权限比较重要</span>
     &nbsp;&nbsp;&nbsp;&nbsp;
     特殊权限：{:checkbox(0,0,'isspecial')} <span class="text-warning"> 注：勾选表示特殊权限</span>
     <div class="alert alert-primary" style="margin:10px auto 0px auto;">
      <p>1.勾选了特殊权限的栏目，系统不会控制显示在对应的栏目下。</p>
      <p>2.存在特殊权限，但是部门没有该权限的话，仍然没有权限查看。</p>
      <p>3.例如：添加一个 产品添加 的特殊权限，若是您想控制部门拥有查看产品的权限，但是无法添加产品的权限。您可以把添加产品设定为特殊权限</p>
     </div> 
     </td>
   </tr>
   <tr class="opentr" style="display:none;">
     <td height="32" align="right" valign="middle">是否展开：</td>
     <td height="32" align="left">{:checkbox(0,0,'isopen')} <span class="text-warning"> 注：是否默认展开栏目。</span></td>
   </tr>
   <input type="hidden" id="mpid" name="mpid" value="1" />
   <input type="hidden" id="pid" name="pid" value="0" />
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'添加栏目','size'=>3,'type'=>'submit','faicon'=>'code','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
 <script type="text/javascript">
  function sysauth(td) {
	if (td.title.value == '') { swal('请输入栏目名称','系统提示','error');td.title.focus(); return false;}
	var mpid = $("#mpid").val();
	if (mpid == 2) {
	  if ($("#lid").val() == 0) {swal('请至少选择一个顶级栏目','','error');return false;}
	}
	if (mpid == 3) {
	  if ($("#pid").val() == 0) {swal('请至少选择一个次级栏目','','error');return false;}
	}
  }
  $(".lev1").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(1);
    $(".lev2,.lev3").removeClass("btn-primary").addClass("btn-default");
	$(".importanttr,.linktr,.opentr,.topmenu").hide();
  });
  $(".lev2").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(2);
    $(".lev1,.lev3").removeClass("btn-primary").addClass("btn-default");
	$(".opentr,.linktr,.topmenu").show();
	$(".importanttr,.mmenu").hide();
	$("#pid").val(0);
  });
  $(".lev3").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(3);
    $(".lev1,.lev2").removeClass("btn-primary").addClass("btn-default");
	$(".opentr").hide();
	$(".importanttr,.linktr,.topmenu").show();
	if ($("#lid").val()!=0) {
	  showMenu($("#lid").val());
	}
  });
  //
  $(".topmenu .dropdown-menu li a").click(function(e) {
    var id = $(this).data("id");
	if ( $("#mpid").val() == 3 && id !=0 ) {
	  showMenu(id);
	}
  });
  //
  function showMenu(id) {
    if ( id ) {
	  $.post("{:url('Admin/getMenu')}",{'id':id},function(data){
	    if (data!='') {
		  $(".mmenu").show().html(data);
		} else {
		  $(".mmenu").hide().html('');
		  $("#pid").val(0);
		}
	  },'json');
	} else {
	  return false;
	}
  }
  
  //
  $("body").on("click",".btn-menu",function(){
    var id = $(this).data("id");
	$(".btn-menu button").addClass("btn-default").removeClass("btn-success");
	$(this).find(".btn").removeClass("btn-success").addClass("btn-success");
	$("#pid").val(id);
  });
  
  $(".code").on("blur",function(){
    showicon();
  });
  $('.icontype input').on('ifChecked', function(event){
    showicon();
  });
  $(".icontype input").on("ifUnchecked",function(event){
    showicon();
  });
  function showicon() {
   var icon = $('.code').val();
   if ( icon !='' ) {
	 isext = $(":input[name='isext']").is(":checked");
	 if ( isext ) {
	   $(".icontd .input-group-addon").html('<span class="fa fa-'+icon+'">&nbsp;</span>');
	 } else {
	   $(".icontd .input-group-addon").html('<span class="glyphicon glyphicon-'+icon+'"></span>');
	 }
   }
  }
  
 </script>
</block>