<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-body">
  <div class="btn-group">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'primary','round'=>1,'url'=>url('system/sysmod')))}

  </div>
  <div class="ui-block"></div>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">　站点名称：</td>
        <td height="42" align="left">{:inputs(array('name'=>'metatitle','val'=>$data['metatitle'],'scene'=>'topic','tips'=>'( 应用程序名称，用在站点显示中 )'))}</td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点ICP备案号：</td>
        <td height="32">{:inputs(array('name'=>'icpnote','val'=>$data['icpnote'],'units'=>'ICP','tips'=>'(申请过程是免费的,没有ICP备案号表示该网站不合法) '))}</td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　描述信息：</td>
        <td height="82" align="left">{:inputs(array('name'=>'metades','type'=>'textarea','val'=>$data['metades']))}</td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　站点关键字：</td>
        <td height="82" align="left">{:inputs(array('name'=>'metakey','type'=>'textarea','val'=>$data['metakey']))}</td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　可放代码：</td>
        <td height="82" align="left">{:inputs(array('name'=>'sys_code','type'=>'textarea','val'=>$data['sys_code'],'place'=>'您可以把第三方的代码放在这里，例如：百度统计代码'))}</td>
      </tr>
      <tr class="hide">
        <td width="132" height="32" align="right" valign="middle">　开启在线客服：</td>
        <td height="32" align="left">{:checkbox($data['isqq'],0,'isqq')}<span class="text-warning">&nbsp;注：勾选表示开启在线客服功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　开启访问统计：</td>
        <td height="32" align="left">{:checkbox($data['isonline'],0,'isonline')}<span class="text-warning">&nbsp;注：勾选表示开启访问统计。</span></td>
      </tr>    
      <tr>
        <td width="132" height="32" align="right" valign="middle">　是否关闭项目：</td>
        <td height="32" align="left">{:checkbox($data['c_site'],0,'c_site')}<span class="text-warning">&nbsp;注：勾选表示关闭项目。</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　关闭说明：</td>
        <td height="82" align="left">{:inputs(array('name'=>'c_text','type'=>'textarea','val'=>$data['c_text'],'tips'=>''))}</td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　后台分页值：</td>
        <td height="32" align="left">{:inputs(array('name'=>'adminpage','val'=>$data['adminpage'],'scene'=>'ord','tips'=>'(设置后台资料管理分页值，大于1的整数，清除缓存后生效)'))}</td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
      </tr>
  </table>
  </form>
 <script type="text/javascript">
  function sysck(td){
    if($.trim(td.metatitle.value)==''){swal('请输入站点名称','','error');return false;}
	if($.trim(td.metades.value)==''){swal('请输入站点描述','','error');return false;}
	if($.trim(td.metakey.value)==''){swal('请输入站点关键词','','error');return false;}
  }
 </script>
 </div>
 </div>
</block>