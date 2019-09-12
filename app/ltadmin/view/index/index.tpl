<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <div class="panel-heading"><h3 class="panel-title">后台管理中心</h3></div>
 <div class="panel-body">
 
 <div class="chart-group" style="margin-bottom:15px;">
   <div class="chart-div" onClick="window.location='{:url("Website/datalist",'tables=information&martables=inftype')}'">
     <div class="chart-icon">{:faicon('list-alt')}</div>
     <div class="chart-topic">
       <b>{$sysInfo['articlecount']?:0}篇</b>
       <span title="文章数量">文章数量</span>
     </div>
   </div>
   
   <div class="chart-div sence2" onClick="window.location='{:url("Online/dataonline")}'">
     <div class="chart-icon">{:faicon('bar-chart-o')}</div>
     <div class="chart-topic">
       <b>{$sysInfo['onlinetoday']?:0}</b>
       <span title="今日访问PV量">今日访问PV量</span>
     </div>
   </div>
   
   <div class="chart-div sence3" onClick="window.location='{:url("System/databackuplist")}'">
     <div class="chart-icon">{:faicon('database')}</div>
     <div class="chart-topic">
       <b>{$sysInfo['backupcount']}条</b>
       <span>数据库备份信息</span>
     </div>
   </div>
   
   <div class="chart-div sence4">
     <div class="chart-icon">{:picon('data-settings')}</div>
     <div class="chart-topic">
       <b>{$sysInfo['disk_size']}</b>
       <span>可用磁盘大小</span>
     </div>
   </div>
   
 </div>
 
 <div class="alert alert-primary">
   <p>&nbsp;{:icon('cog')}&nbsp;&nbsp;系统提示：如果您长时间不使用系统，但是又不想退出系统，您可以点击 <a href="javascript:void(0)" class="lockscreen">{:faicon('lock')} 锁屏</a> 锁定屏幕！</p>
   <p>&nbsp;{:icon('cog')}&nbsp;&nbsp;系统提示：当您新增或者修改了数据信息时，请点击 <a href="{:url('index/cleancache')}" style="color:#000">{:icon('trash')} 清除缓存</a> ，删除掉系统缓存，保证前台显示最新的数据。</p>
   <p>&nbsp;{:icon('cog')}&nbsp;&nbsp;系统提示：了解后台管理系统特性及版本更新详情 <a href="javascript:void(0)" data-toggle="modal" data-target="#useit">{:icon('question-sign')} 请点击</a> 这里。</p>
   <if condition="$sysInfo['backupcount'] gt 0">
   <p>&nbsp;{:icon('info-sign')}&nbsp;&nbsp;您有 {$sysInfo['backupcount']} 条数据库备份信息，建议您定时<a href="{:url('system/databackup')}">{:icon('trash')} 备份</a> 您的数据库信息，您上次备份数据的时间为 {$sysInfo['backuptime']}。</p>
   </if>
 </div>
 

 <div class="modal fade" id="useit">
  <div class="modal-dialog modal-md">
    <div class="modal-content" style="border-radius:0;">
      <div class="modal-body">
      <!-----> 
      <div>
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#updatelog" aria-controls="updatelog" role="tab" data-toggle="tab">{:icon('list-alt')} 更新日志</a></li>
        <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab">{:icon('map-marker')} 联系我们</a></li>
      </ul>
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="updatelog">
          <blockquote class="updata-log">
            <p style=" color:#63f; font-size:15px;">更新日志{$sysInfo['admin_ver']}</p>
            <ul>
              <li style="color:#63f;">V4更新</li>
              <li>1：新增数据库自动备份功能，可设置数据库字段备份天数，登录后台默认执行，不需要手动备份。</li>
              <li>2：新增删除大量数据提示功能，防止误操作删除数据。</li>
              <li>3：新增单页TDK设置。</li>
              <li>4：优化图片上传插件，舍弃 uploadfiy 上传插件，改为文件上传。兼容性更好。</li>
              <li>5：文章，单页新增TDK设置。</li>
              <li>6：新增文章预览功能。</li>
              <li>7：编辑器新增微信采集功能，可以采集微信文章。</li>
              <li>8：编辑器新增百度地图在线制作功能。</li>
              <li>9：新增网站地图生成功能。</li>
              <li>10：新增百度优化优化设置，您可以自己设置自动提交百度优化平台。</li>
              <li>11：文章页新增tag值的添加</li>
              <li>12：修复后台分页类BUG。</li>
              <li>13：等等..</li>
              <li style="color:#63f;">V4.5更新 <font color="red">news</font></li>
              <li>1：使用thinkphp5.0 框架 重构CMS 项目，删除冗余方法，使CMS更简单轻便！</li>
              <li>2：thinkphp5.0 优化了核心，减少了依赖，实现了真正的惰性加载。</li>
              <li>3：重写后台文件上传插件，采用表单上传，兼容性更高！</li>
              <li>4：会员登录连续登录失败5次（可配置）之后，将禁止登录1小时！</li>
              <li>5：编辑器新增敏感词检测功能！</li>
              <li>6：新增后台菜单显示方案，可切换！</li>
              <li>7：新增敏感词库！</li>
              <li>8：编辑器新增 乐腾高级模板！</li>
            </ul>
          </blockquote>
        </div>
        <div role="tabpanel" class="tab-pane" id="contact" style="padding:0; margin-top:10px;">
         
          <div class="panel widget" style="width:100%; margin:0px auto;">
            <div class="widget-header bg-primary text-center">
             <h4 class="mar-no pad-top" style="color:#fff; font-weight:normal; margin-bottom:5px;">南昌乐腾网络科技有限公司</h4>
             <p class="mar-btm">BHCMS {$sysInfo['admin_ver']}</p>
            </div>
            <div class="widget-body">
               <img alt="Profile Picture" class="widget-img img-circle img-border-light" style="border:solid 1px #dcdcdc;" src="__img__/logo/adminface.png">
               <div class="list-group bg-trans mar-no">
                  <a class="list-group-item list-item-sm" style="border-bottom:solid 1px #efefef;border-top:solid 1px #efefef;  line-height:26px;" href="#"><span class="pull-right">0791-88117053</span>联系方式</a>
                  <a class="list-group-item list-item-sm" style="border-bottom:solid 1px #efefef;line-height:26px;" href="#"><span class="pull-right"><img src="__img__/bh@bxbht.png" alt="bh@bxbht.com" height="16"></span>联系邮箱</a>
                  <a class="list-group-item list-item-sm" style="border-bottom:solid 1px #efefef;line-height:26px;" href="#"><span class="pull-right">乐腾</span>作者</a>
                  <a class="list-group-item list-item-sm" style="border-bottom:solid 1px #efefef;line-height:26px;" href="http://www.jxbh.cn" target="_blank"><span class="pull-right">http://www.jxbh.cn</span>官网</a>
                  <a class="list-group-item list-item-sm" style="border-bottom:solid 1px #efefef;line-height:26px;" href="http://www.jxbht.com/article/35.html" target="_blank"><span class="pull-right">http://www.jxbht.com/article/35.html</span>BUG反馈</a>
                  <a class="list-group-item list-item-sm" style="line-height:30px;"><span class="pull-right">88246706@qq.com</span>反馈邮箱</a>
               </div>
            </div>
          </div>
        

        </div>
        
       </div>
      </div>
      <!----> 
      </div>

    </div>
  </div>
 </div>
 
 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}" style="margin:10px auto;">
   <tr class="active"><td colspan="4" align="left" valign="middle">{:icon('cog')} 系统信息</td></tr>
   <tr>
     <td align="left" width="25%" valign="middle" height="25">服务器操作系统：</td>
     <td align="left" width="25%" valign="middle">{$sysInfo['os']}</td>
     <td align="left" width="25%" valign="middle">Web 服务器：</td>
     <td align="left" width="25%" valign="middle">{$sysInfo['web_server']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">PHP 版本：</td>
     <td align="left" valign="middle" title="(注:请保证您的PHP版本 > 5.3.0 )">{$sysInfo['php_ver']}</td>
     <td align="left" valign="middle">MySQL 版本：</td>
     <td align="left" valign="middle">{$sysInfo['mysql_ver']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">GD 版本：</td>
     <td align="left" valign="middle">{$sysInfo['gd']}</td>
     <td align="left" valign="middle">时区设置：</td>
     <td align="left" valign="middle">{$sysInfo['timezone']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">文件上传的最大大小/POST上传最大值：</td>
     <td align="left" valign="middle" title="请在php.ini里面设置这2个值">{$sysInfo['max_filesize']} / {$sysInfo['post_maxsize']}</td>
     <td align="left" valign="middle">Zlib 支持：</td>
     <td align="left" valign="middle">{$sysInfo['zlib']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">语言：</td>
     <td align="left" valign="middle">{$sysInfo['language']}</td>
     <td align="left" valign="middle">编码：</td>
     <td align="left" valign="middle">{$sysInfo['coding']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">后台版本：</td>
     <td align="left" valign="middle" title="power by thinkphp5.0.14 and bootstrap 3.0 and nifty">{$sysInfo['admin_ver']}</td>
     <td align="left" valign="middle">联系邮箱：</td>
     <td align="left" valign="middle">lt#jxlt.com <a href="javascript:void(0)" title="(注:请把#换成@)">?</a></td>
   </tr>
   <tr class="hide">
     <td align="left" valign="middle" height="25">磁盘可用：</td>
     <td align="left" valign="middle">{$sysInfo['disk_size']}</td>
     <td align="left" valign="middle">&nbsp;</td>
     <td align="left" valign="middle">&nbsp;</td>
   </tr>
  </table> 
  
 </div>
 </div>
</block>