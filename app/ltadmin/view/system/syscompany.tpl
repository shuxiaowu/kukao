<extend name="public/common" />

<block name="main">

 <div class="pubmain">

  <div class="panel-body">

  <div class="btn-group">

      {:btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','round'=>1,'scene'=>'primary','url'=>url('system/syscompany')))}

  </div>

  <div class="ui-block"></div>

  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">

    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">

      <tr>

        <td width="132" height="32" align="right" valign="middle">　公司名称：</td>

        <td height="32">{:inputs(array('name'=>'companyname','place'=>'公司名称','val'=>$data['companyname'],'icon'=>'globe'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　微博链接：</td>

        <td height="32">{:inputs(array('name'=>'weibourl','place'=>'微博链接','val'=>$data['weibourl'],'faicon'=>'weibo'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　微信二维码：</td>

        <td height="32">{:uppicture($data['wxqpic'],'建议大小：180*180px,等比例亦可。',1,'wxqpic')}</td>

      </tr>
      <tr>

        <td width="132" height="32" align="right" valign="middle">　微信群二维码：</td>

        <td height="32">{:uppicture($data['weixinpic'],'建议大小：180*180px,等比例亦可。',2,'pic')}</td>

      </tr>
      <tr>

        <td width="132" height="32" align="right" valign="middle">　地址：</td>

        <td height="32">{:inputs(array('name'=>'address','place'=>'请输入地址','val'=>$data['address'],'icon'=>'map-marker'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　电话：</td>

        <td height="32">{:inputs(array('name'=>'tel','place'=>'电话','val'=>$data['tel'],'icon'=>'phone-alt','width'=>'20'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　手机：</td>

        <td height="32">{:inputs(array('name'=>'mobile','place'=>'手机','val'=>$data['mobile'],'icon'=>'phone','width'=>'20'))}</td>

      </tr>

      <tr class="hide">

        <td width="132" height="32" align="right" valign="middle">　联系人：</td>

        <td height="32">{:inputs(array('name'=>'contact','place'=>'联系人','val'=>$data['contact'],'icon'=>'user','width'=>'20'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　邮箱：</td>

        <td height="32">{:inputs(array('name'=>'email','place'=>'邮箱','val'=>$data['email'],'icon'=>'envelope','width'=>'20'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　QQ：</td>

        <td height="32">{:inputs(array('name'=>'qq','place'=>'QQ','val'=>$data['qq'],'faicon'=>'qq','width'=>'20'))}</td>

      </tr>

      <tr>

        <td width="132" height="32" align="right" valign="middle">　</td>

        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>

      </tr>

  </table>

  </form>

 </div>

 </div>

</block>