<extend name="public/common" />

<block name="main">

  <div class="pubmain">

    <div class="panel-heading">

      <h3 class="panel-title">添加资料</h3>

    </div>

    <div class="panel-body">

      <form name="adminform" method="post" action="" onSubmit="return sysdata(document.adminform)">

        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">

          <tr>

            <td width="10%" height="32" align="right" valign="middle">资料名称：</td>

            <td height="32" align="left">{:inputs(array('name'=>'topic','scene'=>'topic','tips'=>'资料标题（*必填）'))}</td>

          </tr>
          <if condition='$sty eq 12'>
              <tr>
                <td height="32" align="right" valign="middle">选择年份：</td>
  
                <td height="32" align="left">{:dropdown($dshow['years'],0,'请选择年份','years')}</td>
              </tr>
            </if>
          <if condition='$sty eq 8'>

            <tr>

              <td width="10%" height="32" align="right" valign="middle">职位名称：</td>

              <td height="32" align="left">

                {:inputs(array('name'=>'joptitle','place'=>'职位名称'))}</td>

            </tr>

          </if>

          <tr>

            <td height="32" align="right" valign="middle">资料所属：</td>

            <td height="32" align="left">{:dropdown($dshow['mdata'])}</td>

          </tr>

          <eq name="sty" value='9'>

            <tr>

              <td height="32" align="right" valign="middle">选择科目：</td>

              <td height="32" align="left">{:dropdown($dshow['course'],0,'请选择科目','course')}</td>

            </tr>
            <tr>
              <td height="32" align="right" valign="middle">会员剪辑视频：</td>
              <td height="32" align="left">{:inputs(array('name'=>'advlinkurl','place'=>'会员剪辑视频','val'=>''))}</td>
            </tr>


          </eq>

          <neq name="sty" value="2">

            <tr>

              <td height="32" align="right" valign="middle">跳转链接：</td>

              <td height="32" align="left">{:inputs(array('name'=>'linkurl','place'=>'跳转链接','val'=>''))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">作者/来源：</td>

              <td height="32" align="left">

                {:inputs(array('name'=>'author','place'=>'资料作者','width'=>'19'))}

                {:inputs(array('name'=>'source','place'=>'资料来源','width'=>'19'))}

              </td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">资料简介：</td>

              <td height="32" align="left">

                {:inputs(array('name'=>'intro','type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">上传图片：</td>

              <td height="32" align="left">{:uppic(array('tips'=>'资料配图，尺寸285px*200px'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">资料内容：</td>

              <td height="32" align="left">{:inputs(array('name'=>'content','type'=>'editor'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">TAG标签：</td>

              <td height="32" align="left">{:inputs(array('scene'=>'tag','name'=>'tag','width'=>60))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">页面标题：</td>

              <td height="32" align="left">{:inputs(array('name'=>'title','scene'=>'title'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">页面关键词：</td>

              <td height="32" align="left">{:inputs(array('name'=>'keyword','scene'=>'key'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">页面描述：</td>

              <td height="32" align="left">{:inputs(array('name'=>'metades','scene'=>'des'))}</td>

            </tr>

            <tr>

              <td height="32" align="right" valign="middle">是否置顶：</td>

              <td height="32" align="left">{:checkbox(0,0,'istop')} <span class="text-warning"> 注：勾选表示置顶</span></td>

            </tr>

          </neq>

          <tr>

            <td height="32" align="right" valign="middle">是否启用：</td>

            <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>

          </tr>

          <tr class="hide">

            <td height="32" align="right" valign="middle">资料排序：</td>

            <td height="32" align="left">{:inputs(array('name'=>'ord','scene'=>'ord'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">发布日期：</td>

            <td height="32" align="left">

              {:inputs(array('name'=>'date','scene'=>'date','width'=>'20','val'=>dates(),'tips'=>'请按照 2017-01-01

              08:00:00 格式改写发布日期'))}</td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">&nbsp;</td>

            <input type="hidden" value="{$tables}" name="tables">

            <input type="hidden" value="{$martables}" name="martables">

            <input type="hidden" value="{$sty}" name="sty">

            <td height="32" align="left">

              {:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>

          </tr>

        </table>

      </form>

    </div>

  </div>

</block>