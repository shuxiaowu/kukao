<extend name="common/common" />

<block name="main">

    <!-- content -->

    <div id="content">

        <div class="container" style="border-bottom:1px solid #ddd;padding-bottom:80px;">

            <div class="content_left" style="border-bottom:1px solid #ddd;padding-bottom:30px;">

                <div class="content_l_list">

                    <form name="form" class="form">

                        <div class="apply_top visible-lg" style="font-size:22px;color:#0060ad">

                            报名中心

                        </div>

                        <div class="form_long" style="margin-bottom:0;">

                            <div class="form_title_box">

                                <div class="form_title">类别<span class="important_icon">*</span></div>

                            </div>

                            <div class="form_write">

                                <label>

                                    <input type="radio" name="degree" value="1"><span class="label_text"
                                        checked>专业硕士</span>

                                </label>

                            </div>

                        </div>

                        <div class="form_long">

                            <div class="form_title_box">

                                <div class="form_title">简章</div>

                            </div>

                            <div class="form_write input_text">

                                <input type="text" placeholder="请输入简章" name="simpletext">

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">姓名<span class="important_icon">*</span></div>

                                </div>

                                <div class="form_write input_text">

                                    <input type="text" placeholder="请输入姓名" name="name">

                                </div>

                            </div>

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">性别<span class="important_icon">*</span></div>

                                </div>

                                <div class="form_write">

                                    <label>

                                        <input type="radio" name="sex" value="1"><span class="label_text">男</span>

                                        <input type="radio" name="sex" value="2"><span class="label_text">女</span>

                                    </label>

                                </div>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">手机<span class="important_icon">*</span></div>

                                </div>

                                <div class="form_write input_text">

                                    <input type="text" placeholder="请输入手机" name="phone" class="phone">

                                </div>

                            </div>

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">邮箱</div>

                                </div>

                                <div class="form_write input_text">

                                    <input type="text" placeholder="请输入邮箱" name="email" class="email">

                                </div>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">学历<span class="important_icon">*</span></div>

                                </div>

                                <div class="form_write input_text">

                                    <select name="education">

                                        <option value="小学">小学</option>

                                        <option value="初中">初中</option>

                                        <option value="高中">高中</option>

                                        <option value="专科">专科</option>

                                        <option value="本科">本科</option>

                                        <option value="研究生">研究生</option>

                                        <option value="硕士">硕士</option>

                                        <option value="博士">博士</option>

                                    </select>

                                </div>

                            </div>

                            <div class="form_short">

                                <div class="form_title_box">

                                    <div class="form_title">毕业<span class="important_icon">*</span></div>

                                </div>

                                <div class="form_write input_text">

                                    <input type="text" class="demo-input" name="enddate" placeholder="请选择日期" id="test1">

                                </div>

                                <script src="__js__/laydate.js"></script>

                                <script src="__js__/city.js"></script>

                                <script>

                                    lay('#version').html('-v' + laydate.v);

                                    laydate.render({

                                        elem: '#test1'

                                    });





                                </script>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_select">

                                <div class="form_title_box">

                                    <div class="form_title">地点</div>

                                </div>

                                <div class="form_write">

                                    <div id="area"></div>

                                </div>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_area">

                                <div class="form_title_box">

                                    <div class="form_title">备注</div>

                                </div>

                                <div class="form_write">

                                    <textarea name="remark"> </textarea>、

                                </div>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="form_vertify">

                                <div class="form_title_box">

                                    <div class="form_title">验证码</div>

                                </div>

                                <div class="form_write" style="display:flex;">

                                    <div class="input_vertify">

                                        <input type="text" placeholder="请输入验证码" name="code">

                                    </div>

                                    <div id="code-verify"
                                        style="float: left;height:45px;box-sizing:border-box;padding-top:10px;"></div>

                                </div>

                            </div>

                        </div>

                        <div class="form_line_box">

                            <div class="apply_btn">

                                我要报名

                            </div>

                        </div>

                    </form>

                </div>



            </div>

            <div class="visible-lg">

                <include file="common/common_right">

            </div>



        </div>

    </div>

    <script type="text/javascript">

        gcode();

        function gcode() {

            var files = "{:url('home/index/logincode','','')}";

            document.getElementById("code-verify").innerHTML = '<img src="' + files + '/t=' + Math.random() + '" style=" cursor:pointer;border:0;vertical-align:middle;margin:2px 0 0 1px;"/>';

        }

        $("#code-verify").click(function (e) { gcode(); });

        $('.apply_btn').click(function (e) {

            var PhoneReg = /^1[3456789]\d{9}$/;

            var EmailReg = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;

            var email = $('.email').val();

            var phone = $('.phone').val();

            var form = $('.form').serialize();

            var input_form = $('.form input[type="text"]');

            var isnull = 0;

            if (!PhoneReg.test(phone)) { alert('手机号码输入有误'); return false; }

            if (!EmailReg.test(email)) { alert('邮箱输入有误'); return false; }

            $.each(input_form, function (i, value) {

                if (value.value == '') { isnull = 1; return false; }



            })

            if (isnull) { alert('资料信息不能为空'); return false }

            console.log(form);

            $.ajax({

                type: 'post',

                url: '{:url("index/applyGet")}',

                data: form,

                datatype: 'json',

                success: function (reg) {

                    if (reg.status == 0) {

                        gcode();

                    }

                    alert(reg.msg);

                }

            })



        })



    </script>

    <script>

        var sheng = document.createElement("select");

        var shi = document.createElement("select");

        var qu = document.createElement("select");

        var area = document.getElementById("area");

        sheng.setAttribute("name", "province");

        shi.setAttribute("name", "town");

        qu.setAttribute("name", "area");

        area.appendChild(sheng);

        area.appendChild(shi);

        area.appendChild(qu);

        sheng.options[0] = new Option("请输入省", 0);

        shi.options[0] = new Option("请输入市", 0);

        qu.options[0] = new Option("请输入区", 0);



        // 循环第一步,把省循环进select

        for (var i = 0; i < city.length; i++) {

            sheng.options[sheng.length] = new Option(city[i].name, city[i].name);

            // 循环第二步,把所有的市都循环进select

            sheng.onchange = function () {

                console.log(sheng.selectedIndex - 1);

                shi.options.length = 0;

                shi.options[shi.length] = new Option("请输入市");

                for (var j = 0; j < city[sheng.selectedIndex - 1].city.length; j++) {

                    shi.options[shi.length] = new Option(city[sheng.selectedIndex - 1].city[j].name, city[sheng.selectedIndex - 1].city[j].name)

                }



            }

            shi.onchange = function () {

                qu.options.length = 0;

                qu.options[qu.length] = new Option("请输入区");

                for (var k = 0; k < city[sheng.selectedIndex - 1].city[shi.selectedIndex - 1].area.length; k++) {

                    qu.options[qu.length] = new Option(city[sheng.selectedIndex - 1].city[shi.selectedIndex - 1].area[k], city[sheng.selectedIndex - 1].city[shi.selectedIndex - 1].area[k]);

                };

            }

        };

    </script>

</block>