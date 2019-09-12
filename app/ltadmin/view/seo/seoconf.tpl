<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-heading"><h3 class="panel-title">百度优化配置</h3></div>
  <div class="panel-body">
   <form name="sysmod" method="post" action="">
    <div class="alert alert-primary">
     <p>说明</p>
     <p>MIP(Mobile Instant Page - 移动网页加速器)，是一套应用于移动网页的开放性技术标准。通过提供MIP-HTML规范、MIP-JS运行环境以及MIP-Cache页面缓存系统，实现移动网页加速。</p>
     <p>主动推送：及时发现：可以缩短百度爬虫发现您站点新链接的时间，使新发布的页面可以在第一时间被百度收录</p> 
    </div>
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="20%" height="30" align="left" valign="middle">参数说明</td>
        <td align="left" valign="middle">参数值</td>
      </tr>
      <tr>
        <td align="left" valign="middle">文章URL:<br/><font style="color:#999; font-size:12px;">文章的url, 例如：http://www.baidu.cn/article/[id].html</font></td>
        <td align="left" valign="middle">{:inputs(array('name'=>'articleurl','val'=>$data['articleurl'],'place'=>'文章的url, 例如：http://www.baidu.cn/article/[id].html'))}</td>
      </tr>
      <tr>
        <td align="left" valign="middle">文章URL手机站:<br/><font style="color:#999; font-size:12px;">文章的url, 例如：http://m.jxbh.cn/article/[id].html</font></td>
        <td align="left" valign="middle">{:inputs(array('name'=>'marticleurl','val'=>$data['marticleurl'],'place'=>'手机站文章的url, 例如：http://m.baidu.cn/article/[id].html'))}</td>
      </tr>    
      <tr>
        <td align="left" valign="middle">MIP提交Url:<br/><font style="color:#999; font-size:12px;"><a href="http://www.baidu.com/article/210.html"{:tooltip('点击跳转至百度')}target="_blank" style="color:#f60;">点击查看如何获取？</a></font></td>
        <td align="left" valign="middle">{:inputs(array('name'=>'mipurl','val'=>$data['mipurl'],'width'=>60,'place'=>'MIP提交的url'))}</td>
      </tr>
      <tr>
        <td align="left" valign="middle">百度主动推送Url:<br/><font style="color:#999; font-size:12px;"><a href="http://www.baidu.com/article/210.html"{:tooltip('点击跳转至百度')} target="_blank" style="color:#f60;">点击查看如何获取？</a></font></td>
        <td align="left" valign="middle">{:inputs(array('name'=>'baiduurl','val'=>$data['baiduurl'],'width'=>60,'place'=>'百度主动推送的url'))}</td>
      </tr>
      <tr>
        <td align="left" valign="middle">自动推送:<br/><font style="color:#999; font-size:12px;">勾选，配置之后，后台发文章成功之后将自动推送至百度</font></td>
        <td align="left" valign="middle">
          {:checkbox($data['isauto'],0,'isauto')} <font class="text-warning">勾选表示自动推送</font>
        </td>
      </tr>
      <tr>
        <td align="left" height="35" valign="middle"></td>
        <td align="left" valign="middle">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
  </div>
 </div>
</block>