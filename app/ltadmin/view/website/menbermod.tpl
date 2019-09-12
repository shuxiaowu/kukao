<extend name="public/common" />

<block name="main">

    <div class="pubmain">

        <div class="panel-heading">

            <h3 class="panel-title pull-left">编辑会员</h3>

        </div>

        <div class="panel-body">

            <form name="adminform" method="post" action="" onSubmit="return sysadminuser(document.adminform)">

                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

                    <tr>

                        <td height="32" align="right" valign="middle">姓名：</td>

                        <td height="32" align="left">

                            {:inputs(array('name'=>'name','val'=>$data['realname'],'icon'=>'user','width'=>15))}</td>

                    </tr>

                    <tr>

                        <td width="10%" height="32" align="right" valign="middle">手机号：</td>

                        <td height="32" align="left">

                            {:inputs(array('type'=>'text','name'=>'user','val'=>$data['user'],'icon'=>'user','width'=>15))}

                        </td>

                    </tr>

                    <tr>

                            <td height="32" align="right" valign="middle">旧密码密码：</td>

                            <td height="32" align="left">

                                {:inputs(array('type'=>'text','name'=>'password','val'=>$data['userpass'], 'icon'=>'log-out','width'=>30,'place'=>'修改密码','tips'=>'长度大于6位，支持大小写，留空表示不修改密码'))}

                            </td>

                        </tr>

                    <tr>

                        <td height="32" align="right" valign="middle">修改密码：</td>

                        <td height="32" align="left">

                            {:inputs(array('type'=>'text','name'=>'pass','icon'=>'log-out','width'=>30,'place'=>'修改密码','tips'=>'长度大于6位，支持大小写，留空表示不修改密码'))}

                        </td>

                    </tr>

                    <tr>

                        <td height="32" align="right" valign="middle">备注：</td>

                        <td height="50" align="left"><textarea style="width:290px;height:60px;" name="remark">{$data['remark']}</textarea></td>

                    </tr>

                    <tr>

                        <td height="32" align="right" valign="middle">&nbsp;</td>

                        <input type="hidden" value="{$data['Id']}" name="id">

                        <td height="32" align="left">

                            {:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}

                        </td>

                    </tr>

                </table>

            </form>

        </div>

    </div>

    <script type="text/javascript">
    if ($.trim(td.pass.value).length < 6) { swal('请输入会员的登录密码', '不得少于6位', 'error'); return false; }
        $('.lev1 input,.lev2 input').on('ifChecked', function (event) {

            var id = $(this).val();

            $(".adminauth" + id).find("input").iCheck('check');

        });

        $(".lev1 input,.lev2 input").on("ifUnchecked", function (event) {

            var id = $(this).val();

            $(".adminauth" + id).find(".icheckbox_minimal").removeClass("checked");

            $(".adminauth" + id).find("input").attr("checked", false);

        });

        $("body").on("click", ".opened", function () {

            var id = $(this).data("id");

            var obj = $(".adminauth" + id);

            var $this = $(this);

            if (obj.is(":hidden")) {

                obj.show();

                $this.find("font").removeClass("fa-plus-square").addClass("fa-minus-square");

            } else {

                obj.hide();

                $this.find("font").removeClass("fa-minus-square").addClass("fa-plus-square");

            }

        });

    </script>

</block>