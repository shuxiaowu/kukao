<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading">
   <h3 class="panel-title pull-left">编辑管理部门</h3>
  </div>
  <div class="panel-body">
  <form name="adminform" method="post" action="" onSubmit="return sysadminuser(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">部门名称：</td>
    <td height="32" align="left">{:inputs(array('name'=>'topic','faicon'=>'gears','val'=>$data['topic'],'width'=>18,'place'=>'部门名称','tips'=>'必填'))}</td>
   </tr>
   <if condition="$adminauths neq ''">
   <tr>
     <td height="32" align="right" valign="middle">管理权限：</td>
     <td height="32" align="left">
      <div class="authlist">
      <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="table">
       <tr>
         <td width="50" align="center" valign="middle" height="37">选择</td>
         <td width="60" align="center" valign="middle">栏目ID</td>
         <td align="left" valign="middle">栏目名称</td>
       </tr>
       <volist name="adminauths" id="obj" key="i">
       <tr id="adminauth{$obj['Id']}" class="active">
         <td align="center" valign="middle" height="37" class="lev1"><input data-lev="1" type="checkbox" id="ck{$obj['Id']}" class="m-checkbox" value="{$obj.Id}" <in name="obj['Id']" value="$data['auth']">checked="checked"</in> name="auth[]"><label for="ck{$obj['Id']}"></label></td>
         <td align="center" valign="middle">{$obj['Id']}</td>
         <td align="left" valign="middle"><span class="opened" data-id="{$obj['Id']}">{:faicon('minus-square','font')} {$obj['title']?:'--'}</span></td>
       </tr>
       <if condition="$obj['mdata'] neq ''">
         <volist name="obj['mdata']" id="mobj" key="j">
           <tr id="adminauth{$mobj['Id']}" class="adminauth{$obj['Id']}">
             <td align="center" valign="middle" height="37" class="lev2"><input data-lev="2" type="checkbox" id="mck{$mobj['Id']}" class="m-checkbox" value="{$mobj.Id}" <in name="mobj['Id']" value="$data['auth']">checked="checked"</in> name="auth[]"><label for="mck{$mobj['Id']}"></label></td>
             <td align="center" valign="middle">{$mobj['Id']}</td>
             <td align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="opened" data-id="{$mobj['Id']}">{:faicon('plus-square','font')} {$mobj['title']?:'--'}</span></td>
           </tr>
           {:showadminauth($mobj['Id'],2,$data['auth'])}
         </volist>
       </if>
       </volist>
      </table>
      </div>
      <div class="alert alert-primary" style="margin:0 auto 10px auto">
       <p>设置须知：</p>
       <p>1：勾选的子类的权限 请先选择父类的权限 例如：您要勾选 系统管理->管理首页->(系统设置)里面的权限 要先勾选 系统管理 和 管理首页 权限</p>
       <p>2：勾选父类权限 默认会勾选 子类的全部权限</p>
      </div>
     </td>
   </tr>
   </if>
   <tr>
     <td height="32" align="right" valign="middle">部门排序：</td>
     <td height="32" align="left">{:inputs(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord'))}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$data['Id']}" name="id">
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 </div>
 <script type="text/javascript">
	
	$('.lev2 input').click(function(e) {
	  var id = $(this).val();
      if ( $(this).is(":checked") ) {
		$(".adminauth"+id).find("input").prop("checked",true);
	  } else {
        $(".adminauth"+id).find("input").prop("checked",false);
	  } 
    });
	$('.lev1 input').click(function(e) {
	  var id  = $(this).val();
	  if ( $(this).is(":checked") ) {
		$(".adminauth"+id).find("input").click();
		$(".adminauth"+id).find("input").prop("checked",true);
	  } else {
		$(".adminauth"+id).find("input").click();
        $(".adminauth"+id).find("input").prop("checked",false);
	  } 
    });
	
    $("body").on("click",".opened",function(){
     var id  = $(this).data("id");
	 var obj = $(".adminauth"+id);
	 var $this = $(this);
	 if (obj.is(":hidden")){
	   obj.show();
	   $this.find("font").removeClass("fa-plus-square").addClass("fa-minus-square");
	 } else {
	   obj.hide();
	   $this.find("font").removeClass("fa-minus-square").addClass("fa-plus-square");
	 }
   });
 </script>
</block>