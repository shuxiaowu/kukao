<!-- links -->

<div id="links" class="visible-lg">

    <div class="container">

        <div class="links_topic">友情链接</div>

        <div class="links_name">

            <volist name="links" id="obj">

                <a href="{$obj.linkurl}" target="_blank">{$obj.topic}</a>

            </volist>

        </div>

    </div>

</div>

<!-- foot -->

<div id="foot" class="visible-lg">

    <div class="container">

        <div class="foot_nav">

            <a href="{:url('home/index/about')}">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="{:url('home/index/video')}">视频课程</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="{:url('home/index/team')}">名师团队</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="{:url('home/index/applyCenter')}">报名中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="{:url('home/index/about','sty=4')}">网站地图</a>

        </div>

        <div class="foot_center">

            <div class="fc_box pull-left">

                <div class="fc_box_top">

                    <p class="fc_box_pic"><img src="__img__/addresspic.png"></p>

                    <p class="fc_box_p">江西专硕在线地址：</p>

                </div>

                <div class="fc_add">{$sysconf.address}</div>

                <div class="fc_box_top">

                    <p class="fc_box_pic"><img src="__img__/fc_tel.png"></p>

                    <p class="fc_box_p">联系电话：</p>

                </div>

                <div class="fc_add">{$sysconf.tel}</div>

            </div>

            <div class="fc_code pull-right">

                <div class="code_box">

                    <p class="code_imag"><img src="__img__/code1.jpg"></p>

                    <p class="code_p">微信公众号</p>

                </div>

                <div class="code_box">

                    <p class="code_imag"><img src="__img__/code1.jpg"></p>

                    <p class="code_p">微信群号</p>

                </div>

            </div>

        </div>

        <div class="foot_bottom">

            <p>版权所有 2004-2018 {$sysconf.companyname} &nbsp;&nbsp;&nbsp; {$sysconf.icpnote} </p>

        </div>

    </div>

</div>

<div id="HBox">

    <div class="box_left_lg  visible-lg">

        <div class="c_log">

            <img src="__img__/xlogo.png">

        </div>

        <div class="clog_d">

            <div class="clog_item">

                <p><img src="__img__/gou.png"></p>

                <p>免费试听所有视频课程</p>

            </div>

            <div class="clog_item">

                <p><img src="__img__/gou.png"></p>

                <p>名师在线指导讲解疑难杂点</p>

            </div>

            <div class="clog_item">

                <p><img src="__img__/gou.png"></p>

                <p>持续更新，学习无止境</p>

            </div>

        </div>

    </div>

    <div class="box_rigth_lg">

        <div class="bt_head">

            <span class="bt_big">登录后</span><span class="bt_small">即可观看完整课程视频！</span>

        </div>

        <form action="" method="post" onsubmit="return false;">

            <ul class="list">

                <li>

                    <label>手 机<font color="#ff0000">*</font></label>

                    <div class="fl"><input type="text" name="phone" value="" class="ipt phone" /></div>

                </li>

                <li>

                    <label>密码 <font color="#ff0000">*</font></label>

                    <div class="fl"><input type="password" name="password" value="" class="ipt password" /></div>

                </li>

                <li>
                <div class="box_checked" style="display:flex;">
                    <div class="pull-left">
                        <input type="checkbox" name="like" value="男" class="box_checkinput" />

                        <div class="box_check">



                        </div>

                        <img src="__img__/checkbox.png" class="checkimg">
                    </div>
                    <div class="box_text">

                        我已同意江西专硕在线<span class="xieyi"><a
                                href="https://view.officeapps.live.com/op/view.aspx?src={$_SERVER['HTTP_HOST']}__file__ss.docx" style="color:#999">《服务使用协议》</a></span>

                    </div>

                </div>

                </li>



                <li><input type="submit" value="确认" class="submitBtn" /></li>

                <li>

                    <div>

                        <p style="font-size:14px; color:#f71818">注：拨打联系电话{$sysconf.mobile}获取登录权限哦！</p>

                    </div>

                </li>

            </ul>

        </form>

    </div>
   


</div>
<script type="text/javascript" src="__js__/foot.js"></script>
<!-- -->


<script>

    var PhoneReg = /^1[3456789]\d{9}$/;
    $('.mba_btns').click(function () {
        var name1 = $('.mba_name').val();

        var tel1 = $('.mba_tel').val();

        if (name1 == "") { alert('输入框不能为空'); return false; }

        if (!PhoneReg.test(tel1)) { alert('输入电话有误'); return false; }

        $.ajax({
            type: 'post',
            url: '{:url("home/index/appoint")}',
            data: { 'name': name1, 'tel': tel1, 'inftype': 'mba' },
            datatype: 'json',
            success: function (data) {
                if (data.status == 1) {
                    alert('预约成功');
                }
            }
        })

    })

    $('.mpa_btns').click(function () {

        var name2 = $('.mpa_name').val();

        var tel2 = $('.mpa_tel').val();

        if (name2 == "") { alert('输入框不能为空'); return false; }

        if (!PhoneReg.test(tel2)) { alert('输入电话有误'); return false; }

        $.ajax({

            type: 'post',

            url: '{:url("home/index/appoint")}',

            data: { 'name': name2, 'tel': tel2, 'inftype': 'mpa' },

            datatype: 'json',

            success: function (data) {

                if (data.status == 1) {

                    alert('预约成功');

                }

            }

        })

    })

    $('.mpacc_btns').click(function () {

        var name3 = $('.mpacc_name').val();

        var tel3 = $('.mpacc_tel').val();

        if (name3 == "") { alert('输入框不能为空'); return false; }

        if (!PhoneReg.test(tel3)) { alert('输入电话有误'); return false; }

        $.ajax({

            type: 'post',

            url: '{:url("home/index/appoint")}',

            data: { 'name': name3, 'tel': tel3, 'inftype': 'mpacc' },

            datatype: 'json',

            success: function (data) {

                if (data.status == 1) {

                    alert('预约成功');

                }

            }

        })

    })

</script>

<script>

    // 登入

    $('.submitBtn').click(function () {

        var PhoneReg = /^1[3456789]\d{9}$/;

        var phone = $('.phone').val();

        var password = $('.password').val();
        if (!PhoneReg.test(phone)) { alert('手机号码输入有误'); return false; }
        if(!($(".box_checked input[type='checkbox']").is(':checked'))){alert('请先看完用户服务协议，并同意');return false;}
        $.ajax({

            url: '{:url("index/login")}',

            data: { 'phone': phone, 'password': password },

            datatype: 'json',

            success: function (msg) {

                if (msg.status == 1) {

                    alert('登入成功!');

                    window.location.href = window.location.href;

                    window.location.reload;

                }

                console.log(msg.msg);

            }

        })

    })

    $('.exit_login').click(function () {

        $.ajax({

            url: '{:url("index/endlogin")}',

            data: {},

            datatype: 'json',

            success: function (data) {

                alert('退出成功!');

                window.location.href = window.location.href;

                window.location.reload;



            }

        })

    })

</script>