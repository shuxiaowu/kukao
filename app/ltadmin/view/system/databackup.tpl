<extend name="public/common" />
<block name="main">
 <div class="pubmain pub-minw">
 <div class="panel-heading"><h3 class="panel-title">数据库备份</h3></div>
 <div class="panel-body">
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
     <td width="45" align="center" valign="middle" height="35">{:ckall()}</td>
     <td width="140" align="left" valign="middle">数据表名称</td>
     <td width="140" align="left" valign="middle">备注</td>
     <td width="140" align="left" valign="middle">记录数</td>
     <td width="140" align="left" valign="middle">类型</td>
     <td width="140" align="left" valign="middle">编码</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="35"><input type="checkbox" value="{$obj['table']}" id="box{$i}" name="datebasename[]" class="myselect m-checkbox" /><label for="box{$i}"></label></td>
    <td align="left" valign="middle">{$obj['table']}</td>
    <td align="left" valign="middle">--</td>
    <td align="left" valign="middle">{$obj['count']}</td>
    <td align="left" valign="middle">MyISAM</td>
    <td align="left" valign="middle">UTF-8</td>
    <td align="left" valign="middle">
     &nbsp;<a href="javascript:void(0)" onClick="setData('{$obj['table']}','opt')">{:btn(array('vals'=>'优化','round'=>1,'tips'=>'优化数据表结构，清除索引数据','faicon'=>'repeat','scene'=>'purple'))}</a>
     &nbsp;<a href="javascript:void(0)" onClick="setData('{$obj['table']}','repair')">{:btn(array('vals'=>'修复','round'=>1,'tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'))}</a>
    </td>
   </tr>
   </volist>
   <tr>
     <td height="35" align="center" valign="middle">{:ckall(2)}</td>
     <td colspan="6" align="left" valign="middle">
     &nbsp;{:btn(array('vals'=>'优化','type'=>'submit','round'=>1,'tips'=>'优化数据表结构，清除索引数据','faicon'=>'repeat','scene'=>'purple'))}
     &nbsp;{:btn(array('vals'=>'修复','type'=>'submit','round'=>1,'tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'))}
     &nbsp;{:btn(array('vals'=>'备份','type'=>'submit','round'=>1,'tips'=>'对所选数据库的数据及结构进行备份处理，备份文件在服务器内','faicon'=>'copy','scene'=>'primary'))}
     </td>
   </tr>
  </table>
  </form>
  </div>
  <div class="panel-footer">{:icon('warning-sign')} 提示，建议您定期对数据库进行备份处理，防止数据丢失。</div>
 </div>
 <script type="text/javascript">
   function setData(db,act){
	  if(db!='' && act!=''){  
		 $.post( "{:url('admin/setdata')}", {'tables':db,'acts':act,'act':'setdata'},function(data){
			if(data==1){
				if(act=="opt"){
				  swal('数据表['+db+']优化完成！','','success');
				}else if(act=="repair"){
				  swal('数据表['+db+']修复完成！','','success');
				}else{
				  swal('非系统命令，无法执行','','error');
				}
			}else{
			  swal(data,'','error');
			}
		 },'json');
	  }else{
		swal('数据提交有误','','error');
	  }
	}
 </script>
</block>