<extend name="public/common" />
<block name="main">
    <div class="pubmain">
        <div class="panel-heading">
            <h3 class="panel-title">查看报名信息</h3>
        </div>
        <div class="panel-body">
            <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
                    <tr>
                        <td width="15%" height="32" align="right" valign="middle">专业类别：</td>
                        <td height="32" align="left">{$data['degree']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">简章：</td>
                        <td height="32" align="left">{$data['simpletext']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">姓名：</td>
                        <td height="32" align="left">{$data['name']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">性别：</td>
                        <td height="32" align="left">{$data['sex']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">手机：</td>
                        <td height="32" align="left">{$data['phone']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">邮箱：</td>
                        <td height="32" align="left">{$data['email']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">学历：</td>
                        <td height="32" align="left">{$data['education']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">毕业日期：</td>
                        <td height="32" align="left">{$data['enddate']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">地址：</td>
                        <td height="32" align="left">{$data['area']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">备注：</td>
                        <td height="32" align="left">
                            {:inputs(array('type'=>'textarea','name'=>'remark','val'=>$data['remark']))}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">报名提交时间：</td>
                        <td height="32" align="left">{$data['date']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">是否处理：</td>
                        <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning">
                                注：勾选表示处理</span></td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">留言IP：</td>
                        <td height="32" align="left">{$data['ip']}</td>
                    </tr>
                    <tr>
                        <td height="32" align="right" valign="middle">&nbsp;</td>
                        <input type="hidden" value="{$data['Id']}" name="id">
                        <td height="32" align="left">
                            {:btn(array('vals'=>'处理留言','size'=>3,'type'=>'submit','icon'=>'comment','scene'=>'primary'))}
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</block>