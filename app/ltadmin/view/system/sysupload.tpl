<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-body">
  <div class="btn-group">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','round'=>1,'url'=>url('system/sysmod')))}
   {:btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>url('system/syscompany')))}
   {:btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>url('system/syswater')))}
   {:btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'primary','round'=>1,'url'=>url('system/sysupload')))}
  </div>
  <div class="ui-block"></div>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">图片上传大小：</td>
        <td height="42" align="left">{:inputs(array('name'=>'picsize','val'=>$data['picsize'],'units'=>'kb','tips'=>'上传的文件大小限制 (0-不做限制)，单位kb，最大值取决于php.ini允许的最大值','width'=>'15'))}</td>
      </tr>
      <tr>
        <td width="132" height="42" align="right" valign="middle">图片上传后缀：</td>
        <td height="42" align="left">{:inputs(array('name'=>'picsuffix','val'=>$data['picsuffix'],'icon'=>'paperclip','tips'=>'多个以英文逗号隔开','width'=>'45'))}</td>
      </tr>
      <tr>
        <td width="132" height="42" align="right" valign="middle">图片优化设置：</td>
        <td height="42" align="left">
         <div class="alert alert-primary">
          <p>1.裁剪设置规则，请设置下列2个值，当您上传的图片宽度或者上传的图片大小大于或者等于该值时，裁剪至“图片裁剪宽度”。</p>
          <p>2.图片裁剪宽度规则仅仅在 编辑器上传图片时候生效。</p>
         </div>
         {:inputs(array('name'=>'picmaxwidth','val'=>$data['picmaxwidth'],'units'=>'px','tips'=>'当图片宽度大于该值的时候，自动裁剪。 0表示不进行操作！ 单位 px','width'=>'15'))}
         {:inputs(array('name'=>'picmaxsize','val'=>$data['picmaxsize'],'units'=>'MB','tips'=>'当图片容量大小大于该值的时候，自动裁剪。 0表示不进行操作！单位 MB','width'=>'15'))}
        </td>
      </tr>
      <tr>
        <td width="132" height="42" align="right" valign="middle">图片裁剪宽度：</td>
        <td height="42" align="left">
         {:inputs(array('name'=>'cropwidth','val'=>$data['cropwidth'],'units'=>'px','tips'=>'裁剪的宽度','width'=>'15'))}
        </td>
      </tr>
      <tr>
        <td width="132" height="42" align="right" valign="middle">附件上传大小：</td>
        <td height="42" align="left">{:inputs(array('name'=>'filesize','val'=>$data['filesize'],'units'=>'kb','tips'=>'上传的文件大小限制 (0-不做限制)，单位kb，最大值取决于php.ini允许的最大值','width'=>'15'))}</td>
      </tr>
      <tr>
        <td width="132" height="42" align="right" valign="middle">附件上传后缀：</td>
        <td height="42" align="left">{:inputs(array('name'=>'filesuffix','val'=>$data['filesuffix'],'icon'=>'paperclip','tips'=>'多个以英文逗号隔开','width'=>'45'))}</td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'paperclip','scene'=>'primary'))}</td>
      </tr>
    </table>
   </form>
 </div>
 </div>
</block>