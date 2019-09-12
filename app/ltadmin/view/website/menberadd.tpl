<extend name="public/common" />

<block name="main">

    <div class="pubmain">

        <div class="panel-heading">

            <h3 class="panel-title pull-left">添加会员</h3>

        </div>

        <div class="panel-body">

            <form name="adminform" method="post" action="{:url('website/createuser')}">

                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

                    <tr>

                        <td height="32" align="right" valign="middle">姓名：</td>

                        <td height="32" align="left">
                            {:inputs(array('name'=>'name','icon'=>'user','width'=>18,'place'=>'姓名'))}</td>
                    </tr>

                    <tr>

                        <td width="10%" height="32" align="right" valign="middle">手机号：</td>

                        <td height="32" align="left">

                            {:inputs(array('name'=>'user','icon'=>'user','width'=>18,'add'=>'ckuser','place'=>'手机号','tips'=>'必填'))}

                        </td>

                    </tr>

                    <tr>

                        <td height="32" align="right" valign="middle">登录密码：</td>

                        <td height="32" align="left">

                            {:inputs(array('type'=>'text','name'=>'pass','icon'=>'log-out','width'=>30,'place'=>'登录密码','tips'=>'长度大于6位，支持大小写'))}

                        </td>

                    </tr>

                    <tr>

                        <td height="32" align="right" valign="middle">重复密码：</td>

                        <td height="32" align="left">

                            {:inputs(array('type'=>'text','name'=>'notpass','icon'=>'log-out','place'=>'重复密码','width'=>30,'tips'=>'长度大于6位，支持大小写'))}

                        </td>

                    </tr>
                    <tr>

                        <td height="32" align="right" valign="middle">备注：</td>

                        <td height="50" align="left"><textarea name="remark" style="width:290px;height:60px;"></textarea></td>

                    </tr>
                    <tr>

                        <td height="32" align="right" valign="middle">&nbsp;</td>

                        <td height="32" align="left">

                            {:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>

                    </tr>


                </table>

            </form>

        </div>

    </div>

    <script type="text/javascript">

        //

        function sysadminuser(td) {

            if ($.trim(td.user.value).length < 2) { swal('请输入会员手机号', '不得少于2位', 'error'); return false; }

            if ($.trim(td.name.value).length < 2) { swal('请输入会员的姓名', '不得少于2位', 'error'); return false; }

            if ($.trim(td.pass.value).length < 6) { swal('请输入会员的登录密码', '不得少于6位', 'error'); return false; }

            if (td.pass.value != td.notpass.value) { swal('密码与确认密码不一致', '请重新输入', 'error'); return false; }

        }

        //检测用户名是否可用

        $(".ckuser").on("blur", function (e) {

            var user = $.trim($(this).val());

            if (user != '') {

                $.post('{:url("website/ckvip")}', { 'user': user }, function (data) {

                    if (data == 1) {

                        swal('该手机号已经注册过', '请重新选择手机号', 'error'); return false;

                    }

                }, 'json');

            } else {

                $(".u-result").html('<font class="text-danger"><span class="glyphicon glyphicon-remove-circle"></span> 请输入管理员登录ID</font>');

            }

        });

    </script>

</block>