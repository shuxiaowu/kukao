<extend name="public/common" />
<block name="main">
  <div class="pubmain">
    <div class="panel-heading">
      <h3 class="panel-title pull-left">添加类别</h3>
    </div>
    <div class="panel-body">
      <form name="adminform" method="post" action="" onSubmit="return systype(document.adminform)">
        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
          <tr>
            <td width="10%" height="32" align="right" valign="middle">资料名称：</td>
            <td height="32" align="left">{:inputs(array('name'=>'topic','scene'=>'topic','tips'=>'资料标题（*必填）'))}</td>
          </tr>
          <tr>
            <td width="10%" height="32" align="right" valign="middle">考研方向：</td>
            <td height="32" align="left">{:inputs(array('name'=>'direct','place'=>'考研方向',))}</td>
          </tr>
          <tr>
            <td width="10%" height="32" align="right" valign="middle">选择院校：</td>
            <td height="32" align="left">{:inputs(array('name'=>'school','place'=>'选择院校',))}</td>
          </tr>
          <tr>
            <td width="10%" height="32" align="right" valign="middle">选择专业：</td>
            <td height="32" align="left">{:inputs(array('name'=>'changemajor','place'=>'选择专业',))}</td>
          </tr>
          <tr>
              <td width="10%" height="32" align="right" valign="middle">时间：</td>
              <td height="32" align="left"> {:inputs(array('name'=>'date','scene'=>'date','width'=>'20','tips'=>'请按照 2017-01-01
                  08:00:00 格式改写发布日期'))}</td>
            </tr>
          <tr class="hide">
            <td width="10%" height="32" align="right" valign="middle">资料别名：</td>
            <td height="32" align="left">
              {:inputs(array('name'=>'domain','icon'=>'flag','width'=>'20','tips'=>'4~20个英文或数字的组合，可为空 ）'))}</td>
          </tr>
          <tr>
            <td height="32" align="right" valign="middle">是否启用：</td>
            <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
          </tr>
          <tr>
            <td height="32" align="right" valign="middle">类别排序：</td>
            <td height="32" align="left">{:inputs(array('name'=>'ord','scene'=>'ord'))}</td>
          </tr>
          <tr>
            <td height="32" align="right" valign="middle">&nbsp;</td>
            <input type="hidden" value="{$tables}" name="tables">
            <input type="hidden" value="{$sty}" name="sty">
            <td height="32" align="left">
              {:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</block>