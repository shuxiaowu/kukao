<!DOCTYPE html>

<html lang="zh-CN">



<head>

    <meta charset="utf-8">

    <title>

        <empty name="title">{$metatitle}

            <else />{$title} - {$metatitle}</empty>

    </title>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />

    <meta name="renderer" content="webkit" />

    <meta name="description" content="{$metades}" />

    <meta name="keywords" content="{$metakey}" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- <meta content="yes" name="apple-mobile-web-app-capable"> -->

    <meta name="viewport"

        content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">

    <link rel="stylesheet" href="__css__/common.css" />

    <link rel="stylesheet" href="__css__/bootstrap.css" />

    <link rel="stylesheet" href="__css__/swiper.min.css" />

    <link rel="stylesheet" href="__css__/mobile.css" />

    <link rel="stylesheet" href="__css__/mark/dialog.css" />

    <link rel="stylesheet" href="__css__/mark/animate.min.css" />

    <script src="__js__/mark/jquery.min.js"></script>

    <script src="__js__/bootstrap.js"></script>

    <script src="__js__/swiper.min.js"></script>

    <script src="__js__/mark/jquery.hDialog.js"></script>

    <script src="__js__/ckplayer.js"></script>

    <block name="title"></block>

    <script type="text/javascript">

        var think = '{$think}/home';

        var img = '__img__';

        var pic = '__pic__';

    </script>

</head>



<body>

    <include file="common/mobile_head" />

    <block name="head">

        <include file="common/header" />

    </block>

    <block name="main"></block>

    <include file="common/footer" />

    <block name="footjs">

        <div id="phone_footer" class="hidden-lg">

            <div class="container">

                <p class="phone_cneter">

                    <a href="{:url('home/index/about')}">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="{:url('home/index/applyCenter')}">报名中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="{:url('home/index/about',['sty'=>4])}">网站地图</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="{:url('/')}">返回首页</a>

                </p>

                <p class="phone_cneter">

                    {$sysconf.address}

                </p>

                <p class="phone_cneter">

                    联系电话：{$sysconf.tel}

                </p>

                <p class="cp_url phone_cneter">

                    江西博方教育咨询有限公司

                </p>

            </div>



        </div>

        <script type="text/javascript">

            // $(window).on('scroll', function () {

            //     if ($(window).scrollTop() > 0) {

            //         $('#ver_pic').hide();

            //     } else {

            //         $('#ver_pic').show();



            //     }



            // })

        </script>

    </block>

    <notempty name="sysconf">{$sysconf['sys_code']}</notempty>

</body>



</html>