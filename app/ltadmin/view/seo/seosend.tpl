<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">手动推送</h3></div>
  <div class="panel-body">
   <form name="adminform" method="post" action="" onSubmit="return ckbaidu(document.adminform)">
    <div class="alert alert-primary">
     <p>说明</p>
     <p>MIP(Mobile Instant Page - 移动网页加速器)，是一套应用于移动网页的开放性技术标准。通过提供MIP-HTML规范、MIP-JS运行环境以及MIP-Cache页面缓存系统，实现移动网页加速。</p>
     <p>主动推送：及时发现：可以缩短百度爬虫发现您站点新链接的时间，使新发布的页面可以在第一时间被百度收录</p> 
    </div>
    <if condition="$data['mipurl'] eq '' and $data['baiduurl'] eq ''">
     <div class="alert alert-danger">您的推送参数未设置，请先去配置您的信息吧！</div>
    </if>
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="10%" height="30" align="left" valign="middle">参数说明</td>
        <td align="left" valign="middle">参数值</td>
      </tr>
      <tr>
        <td align="left" valign="middle">您需要推送URL:<br/><font style="color:#999; font-size:12px;">需要推送的url多条链接换行</font></td>
        <td align="left" valign="middle">
          <textarea class="sendurl form-control" style="height:250px !important; width:80%;" name="sendurl" placeholder="多条链接换行显示"></textarea>
        </td>
      </tr>
      <tr>
        <td align="left" height="35" valign="middle"></td>
        <td align="left" valign="middle">{:btn(array('vals'=>'确定推送','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
  </div>
 </div>
 <script>
  function ckbaidu(td) {
    if ( td.sendurl.value=='') { swal('请输入您需要推送的URL，多条URL换行显示','','error'); return false; }
  }
 </script>
</block>