<extend name="public/common" />

<block name="main">

  <div class="pubmain">

    <div class="panel-heading">

      <h3 class="panel-title">编辑资料</h3>

    </div>

    <div class="panel-body">

      <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">

        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

          <tr>

            <td width="10%" height="32" align="right" valign="middle">资料名称：</td>

            <td height="32" align="left">

              {:inputs(array('name'=>'topic','scene'=>'topic','val'=>$data['topic'],'tips'=>'资料标题（*必填）'))}</td>

          </tr>
          <if condition='$sty eq 12'>
            <tr>
              <td height="32" align="right" valign="middle">选择年份：</td>

              <td height="32" align="left">{:dropdown($dshow['years'],$data['years'],$years,'years')}</td>
            </tr>
          </if>
          <if condition='$sty eq 8'>

            <tr>

              <td width="10%" height="32" align="right" valign="middle">职位名称：</td>

              <td height="32" align="left">

                {:inputs(array('name'=>'joptitle','place'=>'职位名称','val'=>$data['joptitle']))}</td>

            </tr>

          </if>

          <tr>

            <td height="32" align="right" valign="middle">资料所属：</td>

            <td height="32" align="left">{:dropdown($dshow['mdata'],$data['inftype'],$inftopic)}</td>

          </tr>

          <eq name="sty" value='9'>

            <tr>

              <td height="32" align="right" valign="middle">选择科目：</td>

              <td height="32" align="left">{:dropdown($dshow['course'],$data['course'],$course,'course')}</td>

            </tr>
            <tr>
              <td height="32" align="right" valign="middle">会员剪辑视频链接：</td>
              <td height="32" align="left">
                {:inputs(array('name'=>'advlinkurl','place'=>'会员剪辑视频链接','faicon'=>'link','val'=>$data['advlinkurl'],'tips'=>'注：请正确填写，没有http://的请加上http://'))}
              </td>
            </tr>
          </eq>

          <tr>

            <td height="32" align="right" valign="middle">

              <eq name="sty" value='9'>视频链接：

                <else />跳转链接：</eq>

            </td>

            <td height="32" align="left">

              {:inputs(array('name'=>'linkurl','place'=>'链接','val'=>$data['linkurl'],'faicon'=>'link','tips'=>'注：跳转链接请提填此项，没有请勿填写。'))}

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">作者/来源：</td>

            <td height="32" align="left">

              {:inputs(array('name'=>'author','place'=>'资料作者','val'=>$data['author'],'width'=>'20','icon'=>'user','tips'=>'资料作者'))}

              {:inputs(array('name'=>'source','place'=>'资料来源','val'=>$data['source'],'width'=>'20','icon'=>'globe','tips'=>'资料来源'))}

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">资料简介：</td>

            <td height="32" align="left">

              {:inputs(array('name'=>'intro','val'=>$data['intro'],'type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！'))}

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">上传图片：</td>

            <td height="32" align="left">

              {:uppic(array('pic'=>$data['pic'],'tips'=>'资料配图，尺寸'.picsize($sty)))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">资料内容：</td>

            <td height="32" align="left">{:inputs(array('name'=>'content','val'=>$data['content'],'type'=>'editor'))}

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">TAG标签：</td>

            <td height="32" align="left">{:inputs(array('scene'=>'tag','name'=>'tag','val'=>$data['tag'],'width'=>60))}

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面标题：</td>

            <td height="32" align="left">{:inputs(array('name'=>'title','val'=>$data['title'],'scene'=>'title'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面关键词：</td>

            <td height="32" align="left">{:inputs(array('name'=>'keyword','val'=>$data['keyword'],'scene'=>'key'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面描述：</td>

            <td height="32" align="left">{:inputs(array('name'=>'metades','val'=>$data['metades'],'scene'=>'des'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">是否置顶：</td>

            <td height="32" align="left">{:checkbox($data['istop'],0,'istop')} <span class="text-warning">

                注：勾选表示置顶</span></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">是否启用：</td>

            <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning"> 注：勾选表示启用</span></td>

          </tr>

          <tr class="hide">

            <td height="32" align="right" valign="middle">资料排序：</td>

            <td height="32" align="left">{:inputs(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">发布日期：</td>

            <td height="32" align="left">

              {:inputs(array('name'=>'date','val'=>$data['date'],'scene'=>'date','width'=>'20','tips'=>'请按照 2017-01-01

              08:00:00 格式改写发布日期'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">&nbsp;</td>

            <input type="hidden" value="{$dshow['tables']}" name="tables">

            <input type="hidden" value="{$dshow['martables']}" name="martables">

            <input type="hidden" value="{$data['Id']}" name="id">

            <td height="32" align="left">

              {:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}</td>

          </tr>

        </table>

      </form>

    </div>

  </div>

</block>