<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-body">
  <div class="btn-group">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','round'=>1,'url'=>url('system/sysmod')))}
   {:btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>url('system/syscompany')))}
   {:btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>url('system/syswater')))}
   {:btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'default','url'=>url('system/sysupload')))}
   {:btn(array('vals'=>' 后台目录设置','size'=>3,'icon'=>'folder-open','scene'=>'primary','round'=>1,'url'=>url('system/sysadmin')))}
  </div>
  <div class="ui-block"></div>
  <form name="sysmod" method="post" action="" onSubmit="return sysap(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">后台目录保护：</td>
        <td height="42" align="left">
          <div class="input-group input-group-sm" style="width:250px" data-toggle="tooltip" data-placement="right" title="" data-original-title="2~25个字符，不支持中文，英文加数字的组合，第一个字符必须是英文"><input type="text" value="{$data['adminpath']}" name="adminpath" placeholder="请输入后台目录保护" class="form-control"><span class="input-group-addon"><span class="glyphicon glyphicon-folder-open"></span></span></div>
        </td>
      </tr>
      <if condition="$data['adminpath'] neq ''">
      <tr>
        <td width="132" height="42" align="right" valign="middle">当前后台管理：</td>
        <td height="42" align="left">
          <div class="alert alert-success" style="margin:0;">
            <p>1，您的后台登录链接为：<a href="{$domain}{$data['adminpath']}" target="_blank">{:icon('link')} {$domain}{$data['adminpath']}</a></p>
            <p>2，我不想启用后台目录保护，点击 <a href="javascript:void(0)" class="clearAdmin">{:icon('cog')}这里</a> 关闭</p>
          </div>
        </td>
      </tr>
      </if>
      <tr>
       <td width="132" height="32" align="right" valign="middle">设置须知：</td>
       <td valign="middle">
        <div class="alert alert-primary" style="margin:0;">
          <p>1，设置之后原来的登录接口失效，以您设置的目录为准。</p>
          <p>2，系统默认登录链接为： {$domain}bhadmin/index/login.html。</p>
          <p>3，变更之后的登录链接为：{$domain}您填写的后台目录保护。</p>
        </div>
       </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <input type="hidden" value="{$data['adminpath']}" name="oldadminpath" />
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'folder-open','scene'=>'primary'))}</td>
      </tr>
    </table>
   </form>
 </div>
 </div>
 <script type="text/javascript">
  function sysap( td ){
    var path = td.adminpath.value;
	if ( path !='' ) {
	  preg = !!path.match(/^[a-z]+$/);
	  if( preg == false) {
	    swal('格式有误，只能输入小写的英文','','error'); return false;
	  }
	} else {
	  swal('请输入目录的名称','','error');
	  return false;
	}
  }
  
  $(".clearAdmin").click(function(e) {
    var repath = $(this).data("path");
	swal({
		title: "还原后台目录保护",
		text: "您确定要还原后台目录保护吗？",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#ef5350',
		confirmButtonText: '确定还原',
		cancelButtonText: "取消",
		closeOnConfirm: false,
	},
	function(){
		window.location.href = "{:url('System/clearAdmin')}"
	}); 
  }); 
 </script>
</block>