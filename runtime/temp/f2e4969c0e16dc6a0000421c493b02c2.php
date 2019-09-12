<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:55:"D:\phpStudy\WWW\bofang/app/ltadmin\view\index\login.tpl";i:1568079923;}*/ ?>
<!DOCTYPE html>

<html>



<head>

  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="description" content="<?php echo config('devcompany'); ?>CMS <?php echo config('admin_version'); ?>">

  <meta name="keywords" content="<?php echo config('devcompany'); ?>CMS <?php echo config('admin_version'); ?>">

  <meta name="author" content="jxbh">

  <title><?php echo config('devcompany'); ?>CMS</title>

  <style>

body{font-size:12px;margin:0;padding:0;background-color:#273238;background-image:linear-gradient(to bottom,#273238,#070707);background-size:cover;background-attachment:fixed;font-family:"微软雅黑"}
div,input{margin:0;padding:0;-webkit-appearance:none}
.gear{width:166px;height:198px;background:url(/bofang/public/ltadmin/images/gear-line.png) no-repeat center center;position:absolute;z-index:1;left:460px;top:80px;display:none}
.i-login{width:auto;width:480px;height:380px;overflow:hidden;margin:0 auto;position:fixed;top:50%;left:50%;margin:-190px 0 0 -240px;font-family:"微软雅黑"}
.i-login .logo{width:480px;height:92px;margin:0 auto 15px auto;cursor:pointer}
.i-login .i-logindiv{width:480px;height:auto;margin:0 auto;overflow:hidden;box-shadow:0 2px 2px rgba(0,0,0,.05)}
.i-login .i-loginhead{height:55px;width:480px;background:rgba(0,0,0,.5)}
.i-login .i-btn-login,.i-login .i-btn-logo{width:50%;height:55px;line-height:55px;text-align:center;float:left;color:#888a87;font-size:16px;cursor:pointer}
.i-login .i-btn-reg:hover{color:#fff}
.i-login .i-loginhead div.selected{background:#fff;color:#444}
.i-login .i-loginbody{width:480px;height:295px;background:#fff;overflow:hidden}
.i-btn-div,.i-code-div,.i-login .i-user-div,.i-pass-div{width:420px;margin:0 auto;position:relative;overflow:hidden}
.i-login .i-user-div{margin:54px auto 0 auto}
.i-login .i-user-div .i-user{width:388px;height:32px;border:solid 1px #e9e9e9;padding:4px 15px;color:#999}
.i-login .i-code-div .i-code{width:388px;height:32px;border:solid 1px #e9e9e9;padding:4px 15px;color:#999;border-top:none}
.i-login #code-verify{position:absolute;right:2px;top:4px}
.i-login .i-pass-div .i-pass{width:388px;height:32px;border:solid 1px #e9e9e9;padding:4px 15px;color:#999;border-top:none}
.i-login .i-btn-div{margin:10px auto 0 auto}
.i-login-btn{width:420px;height:40px;line-height:40px;background:#38a0f4;color:#fff;text-align:center;border:none;cursor:pointer;font-size:16px;font-family:"微软雅黑"}
.i-login .i-reg-btn:hover,.i-login-btn:hover{background:#42a5f5}
.i-login .i-loginfoot{width:420px;height:35px;text-align:right;margin:10px auto 0 auto;color:#999}
.i-login .i-loginfoot a{color:#999;margin:0 5px 0 5px;text-decoration:none}
.i-login .i-loginfoot a:hover{color:#333}
.i-alert{width:500px;height:40px;background:#fff;position:fixed;top:0;left:50%;margin-top:10px;margin-left:-250px;z-index:300;border-radius:0;display:none;border-left:solid 2px #ed7876}
.i-alert div.i-alert-body{width:480px;height:40px;margin:0 auto;overflow:hidden;line-height:40px;text-align:left;color:#ed7876}
.i-alert div.i-alert-body span{font-size:13px}
.i-alert div.i-alert-body b{font-weight:400;float:right;margin-right:5px;cursor:pointer}
.i-login input:focus{outline:0;color:#191919}
.ltips{width:85%;height:35px;line-height:35px;margin:180px auto;overflow:hidden;text-align:center;background:#fff}
@media (max-width:500px){.i-alert{width:98%;height:auto;position:fixed;top:0;left:1%;margin:10px auto 0 auto;overflow:hidden;z-index:999}
.i-alert div.i-alert-body{width:95%;margin:0 auto}
.gear{display:none}
.i-login{width:95%;height:100%;overflow:hidden;position:fixed;top:15.5%;left:2.5%;margin:0}
.i-login .i-loginbody,.i-login .i-logindiv,.i-login .i-loginfoot,.i-login .i-loginhead{width:100%}
.i-login .i-loginbody{height:100%}
.i-login .logo{width:100%;height:70px;margin:0}
.i-login .logo img{height:60px}
.i-login .i-user-div{margin:25px auto 0 auto}
.i-btn-div,.i-code-div,.i-login .i-user-div,.i-pass-div{width:95%}
.i-btn-div{border-radius:2px}
.i-login-btn{width:100%}
.i-login .i-code-div .i-code,.i-login .i-pass-div .i-pass,.i-login .i-user-div .i-user{width:90%}
.i-login #code-verify{right:5px}
.i-loginfoot a{margin-right:10px!important}
}
.lockscreen{width:535px;height:140px;position:fixed;top:50%;left:50%;margin-left:-267px;margin-top:-70px}
.bhface{width:140px;height:140px;background:#3d3e3f url(/bofang/public/ltadmin/images/logo/adminlogo.png) no-repeat center center;background-size:80%;border-radius:50%;border:solid 10px #1f292e;float:left;margin-right:20px;cursor:pointer;position:relative}
.mpass{width:260px;height:38px;border:solid 1px #3e4142;background:0 0;outline:0;padding-left:10px;color:#777;font-family:"微软雅黑"}
p.h2{font-size:14px;color:#fff;margin-top:10px}
p.tips{font-size:12px;color:#979898;line-height:23px}
p.tips a{color:#ecde2d;text-decoration:none}
.error{color:#2c2e2f}
.btn-login{width:76px;height:40px;line-height:37px;border:solid 1px #3e4142;background:0 0;cursor:pointer;color:#fafafa;font-family:"微软雅黑";position:relative;top:1px;outline:0}
.ui-zoom1{z-index:8;top:0;left:0;width:140px;height:140px;border-radius:50%;background:rgba(255,255,255,.2);position:absolute;opacity:0;-webkit-animation:zoom 4s .3s infinite linear;display:none}
.bhlist-input{position:relative}


  </style>

  <?php if($data['adminpath'] != ''): ?>

    <style>

      body {

        font-size: 12px;

        margin: 0;

        padding: 0;

        background: #273238;

        font-family: "微软雅黑";

      }

    </style>

  <?php endif; ?>

</head>



<body>

  <?php if($data['adminpath'] == ''): ?>

    <form name="bhadmin" method="post" action="">

      <div class="i-login">

        <div class="logo"><img src="/bofang/public/ltadmin/images/logo.png"></div>

        <div class="i-logindiv">

          <div class="i-loginbody">

            <div class="i-user-div"><input type="text" value="" placeholder="用户名" class="i-user"></div>

            <div class="i-pass-div"><input type="password" value="" placeholder="密码" class="i-pass"></div>

            <div class="i-code-div"><input type="tel" value="" placeholder="验证码" maxlength="4" class="i-code">

              <div id="code-verify"></div>

            </div>

            <div class="i-btn-div">

              <div class="i-login-btn">登录</div>

            </div>

            <div class="i-loginfoot"> <a href="" target="_blank">Powered by leteng</a> </div>

          </div>

        </div>

      </div>

    </form>

    <!--弹出对话框-->

    <div class="i-alert">

      <div class="i-alert-body"><span class="alert-tips">我是提示</span> <b>&times;</b></div>

    </div>

    <!--结束-->

    <div class="gear"><img src="/bofang/public/ltadmin/images/gear.png" class="gear-div"></div>





    <script type="text/javascript" src="/bofang/public/ltadmin/js/jquery.min.js"></script>

    <script type="text/javascript">

      function gcode() {

        var files = "<?php echo url('ltadmin/index/logincode','',''); ?>";

        document.getElementById("code-verify").innerHTML = '<img src="' + files + '/t=' + Math.random() + '" style="cursor:pointer;border:0;vertical-align:middle;margin:2px 0 0 1px;"/>';

      }

      gcode();

      $("#code-verify").click(function (e) { gcode(); });

      angle = 0;

      f = setInterval(function () {

        angle += 3;

        $(".gear-div").css("transform", "rotate(" + (angle) + "deg)");

      }, 40);

      var l = parseInt(parseInt($(window).width() - 745) / 2) + 20;

      var t = parseInt(parseInt($(window).height() - 542) / 2) - 50;

      $(".gear").css({ "top": t + 'px', 'left': l + 'px' }).fadeIn(500);

      window.onload = function () {

        (window.onresize = function () {

          var wl = parseInt(parseInt($(window).width() - 745) / 2) + 20;

          var wt = parseInt(parseInt($(window).height() - 542) / 2) + 0;

          $(".gear").css({ "top": wt + 'px', 'left': wl + 'px' }).fadeIn(500);

        })()

      };

      $(".i-login-btn").click(function (e) {

        var user = $.trim($(".i-loginbody .i-user").val());

        var pass = $.trim($(".i-loginbody .i-pass").val());

        var code = $.trim($(".i-loginbody .i-code").val());

        if (user == '') {

          $(".i-alert").show().find(".alert-tips").text('请输入您的用户名'); setTimeout(function () { $(".i-alert").hide(80); }, 2000);

          return false;

        }

        if (pass.length < 6) {

          $(".i-alert").show().find(".alert-tips").text('密码长度不够，请重新输入'); setTimeout(function () { $(".i-alert").hide(80); }, 2000);

          return false;

        }

        if (code == '' || code.length < 4) {

          $(".i-alert").show().find(".alert-tips").text('验证码位数不够，请重新输入'); setTimeout(function () { $(".i-alert").hide(80); }, 2000);

          return false;

        }



        $(".i-login-btn").val('登录中....');

        $.post("<?php echo url('ltadmin/index/checklogin'); ?>", { 'user': user, 'pass': pass, 'code': code }, function (data) {

          $(".i-login-btn").val('登录');

          var loginTips = '';

          if (data == 1) {

            window.location.href = "<?php echo url('ltadmin/index/index'); ?>";

            return false;

          } else if (data == 0) {

            gcode();

            loginTips = '登录失败，请重试';

          } else if (data == 2) {

            gcode();

            loginTips = '用户名或密码有误';

          } else if (data == 3) {

            loginTips = '验证码有误，请重新输入';

          } else if (data == 4) {

            loginTips = '资料为提交完全，请重新提交';

          } else if (data == 5) {

            loginTips = '您的IP被禁止登录了。请联系管理员解除您的限定。';

          } else {

            loginTips = data;

          }

          $(".i-alert").show().find(".alert-tips").text(loginTips);

          setTimeout(function () { $(".i-alert").hide(80); }, 2000);

          return false;

        }, 'json');

      });

      $(".i-alert b").click(function (e) {

        $(".i-alert").hide(80);

      });

      document.onkeydown = function (e) {

        var theEvent = e || window.event;

        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;

        if (code == 13) {

          $(".i-login-btn").click();

        }

      }

    </script>

    <?php else: ?>

    <div class="lockscreen">

      <div class="bhface">

        <div class="ui-zoom1"></div>

      </div>

      <div class="bhlist">

        <p class="h2" style="margin-top:35px;"><?php echo config('devcompany'); ?>提醒您！</p>

        <p class="tips">您已经设置了后台目录保护，该登录链接已经失效。</p>

        <p class="tips">点击<a href="<?php echo url('home/index/index'); ?>">链接</a>跳转到首页吧。</p>

      </div>

    </div>



  <?php endif; ?>

</body>



</html>