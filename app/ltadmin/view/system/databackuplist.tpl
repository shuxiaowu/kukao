<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading">
  <h3 class="panel-title">数据库备份管理</h3>
 </div>
 <div class="panel-body">
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="440" align="left" valign="middle" height="35">备份名称</td>
     <td width="140" align="left" valign="middle">备份大小</td>
     <td width="180" align="left" valign="middle">备份时间</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="left" valign="middle" height="35">{:faicon('database')} {$obj['path']}</td>
    <td align="left" valign="middle">{$obj['size']}</td>
    <td align="left" valign="middle">{$obj['time']}</td>
    <td align="left" valign="middle">
      {:btn(array('vals'=>'下载','icon'=>'download','tips'=>'点击下载此备份文件','round'=>1,'url'=>url('system/downdataup','downpath='.$obj['path'],'')))}
      <if condition="$datasys['isdel'] eq 1">
       <a href="javascript:void(0)" data-path="{$obj['path']}" class="deldataup">{:btn(array('vals'=>'删除','icon'=>'trash','round'=>1,'tips'=>'点击删除该备份文件','scene'=>'danger'))}</a> 
      </if>
      <if condition="$datasys['isre'] eq 1">
       <a href="javascript:void(0)" data-path="{$obj['path']}" class="redataup">{:btn(array('vals'=>'还原','icon'=>'refresh','round'=>1,'tips'=>'点击还原该份备份数据','scene'=>'primary'))}</a>
      </if>
    </td>
   </tr>
   </volist>
  </table>
 </div>
 <div class="panel-footer">{:icon('warning-sign')} 提示，任何形式删除的数据都无法找回，请谨慎操作！</div>
 </div>
 <script type="text/javascript">
 $(document).ready(function(e) {
  $(".deldataup").click(function(e) {
    var delpath = $(this).data("path");
	swal({
		title: "删除无法恢复",
		text: "您真的要删除该备份文件吗？",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#ef3535',
		confirmButtonText: '确定删除',
		cancelButtonText: "取消",
		closeOnConfirm: false,
	},
	function(){
		window.location.href = abspath+"/system/deldataup/delpath/"+delpath;
	}); 
  }); 
  $(".redataup").click(function(e) {
    var repath = $(this).data("path");
	swal({
		title: "还原备份无法恢复",
		text: "您真的要启用还原该备份文件吗？",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#ef3535',
		confirmButtonText: '确定还原',
		cancelButtonText: "取消",
		closeOnConfirm: false,
	},
	function(){
		window.location.href = abspath+"/system/redataup/repath/"+repath;
	}); 
  }); 
 });
 </script>
</block>