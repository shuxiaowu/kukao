<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:56:"D:\phpStudy\WWW\bofang/app/home\view\index\year_test.tpl";i:1568189572;s:54:"D:\phpStudy\WWW\bofang\app\home\view\common\common.tpl";i:1568018048;s:59:"D:\phpStudy\WWW\bofang\app\home\view\common\mobile_head.tpl";i:1568189833;s:54:"D:\phpStudy\WWW\bofang\app\home\view\common\header.tpl";i:1568268293;s:60:"D:\phpStudy\WWW\bofang\app\home\view\common\common_right.tpl";i:1568169468;s:54:"D:\phpStudy\WWW\bofang\app\home\view\common\footer.tpl";i:1568018490;}*/ ?>
<!DOCTYPE html>

<html lang="zh-CN">



<head>

    <meta charset="utf-8">

    <title>

        <?php if(empty($title) || (($title instanceof \think\Collection || $title instanceof \think\Paginator ) && $title->isEmpty())): ?><?php echo $metatitle; else: ?><?php echo $title; ?> - <?php echo $metatitle; endif; ?>

    </title>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />

    <meta name="renderer" content="webkit" />

    <meta name="description" content="<?php echo $metades; ?>" />

    <meta name="keywords" content="<?php echo $metakey; ?>" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- <meta content="yes" name="apple-mobile-web-app-capable"> -->

    <meta name="viewport"

        content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">

    <link rel="stylesheet" href="/bofang/public/home/css/common.css" />

    <link rel="stylesheet" href="/bofang/public/home/css/bootstrap.css" />

    <link rel="stylesheet" href="/bofang/public/home/css/swiper.min.css" />

    <link rel="stylesheet" href="/bofang/public/home/css/mobile.css" />

    <link rel="stylesheet" href="/bofang/public/home/css/mark/dialog.css" />

    <link rel="stylesheet" href="/bofang/public/home/css/mark/animate.min.css" />

    <script src="/bofang/public/home/js/mark/jquery.min.js"></script>

    <script src="/bofang/public/home/js/bootstrap.js"></script>

    <script src="/bofang/public/home/js/swiper.min.js"></script>

    <script src="/bofang/public/home/js/mark/jquery.hDialog.js"></script>

    <script src="/bofang/public/home/js/ckplayer.js"></script>

    

    <script type="text/javascript">

        var think = '<?php echo $think; ?>/home';

        var img = '/bofang/public/home/images';

        var pic = '/bofang/uploads/images/';

    </script>

</head>



<body>

      <!-- mobile_head -->

  <div id="mobile_top" class="hidden-lg">

        <div class="m_top_left">

            <a href="<?php echo url('/'); ?>"><img src="/bofang/public/home/images/phone_logo.png" height="100%"></a>

        </div>

        <div class="phone_top_center">
            <?php if($mark == 'index'): ?>
                <p style="text-transform:uppercase; font-size:15px;color:#fff;line-height:48px;font-weight:700; ">

                    <?php echo $sysconf['companyname']; ?></p>

                <!-- <p style="font-size:12px;color:#fff;line-height:12px;">www.jiangxizszx.com</p> -->
                <?php else: ?>
                 <p style="text-transform:uppercase; font-size:15px;color:#fff;line-height:48px;font-weight:700; ">

                    <?php echo subtext($title,0,12,2); ?></p>
            <?php endif; ?>
        </div>

        <div class="m_top_right">

            <div class="mtr_icon mtr_icon_left <?php if(empty($userphone) || (($userphone instanceof \think\Collection || $userphone instanceof \think\Paginator ) && $userphone->isEmpty())): ?>bounceInDown dialog demo0<?php endif; ?>"><img src="/bofang/public/home/images/person.png" width="100%"></div>

            <div class="mtr_icon mtr_icon_right phonenav_btn"><img src="/bofang/public/home/images/top_btn.png" width="100%"></div>

        </div>

    </div>

    <div id="nav_mask" class="hidden-lg">



    </div>

    <div id="phonenav_list" class="hidden-lg">

        <ul>

            <li <?php if($mark == 'index'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('/'); ?>">

                    <span>首页</span>

                </a>

            </li>

            <li <?php if($mark == 'mba'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mba']); ?>">

                    <span>MBA</span>

                </a>

            </li>

            <li <?php if($mark == 'mpa'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mpa']); ?>">

                    <span>MPA</span>

                </a>

            </li>

            <li <?php if($mark == 'mpacc'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mpacc']); ?>">

                    <span>MPACC</span>

                </a>

            </li>

            <li <?php if($mark == 'mea'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mea']); ?>">

                    <span>MEM</span>

                </a>

            </li>

            <li <?php if($mark == 'mta'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mta']); ?>">

                    <span>MTA</span>

                </a>

            </li>

            <li <?php if($mark == 'maud'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'maud']); ?>">

                    <span>MAUD</span>

                </a>

            </li>

            <li <?php if($mark == 'mlis'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/degree',['urlname'=>'mlis']); ?>">

                    <span>MLIS</span>

                </a>

            </li>

            <li <?php if($mark == 'team'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/team'); ?>">

                    <span>名师团队</span>

                </a>

            </li>

            <li <?php if($mark == 'video'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/video'); ?>">

                    <span>视频课程</span>

                </a>

            </li>

            <li <?php if($mark == 'manageZx'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/manageZx'); ?>">

                    <span>管联资讯</span>

                </a>

            </li>



            <li <?php if($mark == 'yearTest'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/yearTest'); ?>">

                    <span>历年真题</span>

                </a>

            </li>

            <li <?php if($mark == 'manageZt'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/manageZt'); ?>">

                    <span>管联专题</span>

                </a>

            </li>



            <li <?php if($mark == 'about'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/about'); ?>">

                    <span>关于我们</span>

                </a>

            </li>



            <li <?php if($mark == 'applyCenter'): ?>class="active"<?php endif; ?>>

                <a href="<?php echo url('home/index/applyCenter'); ?>">

                    <span>报名中心</span>

                </a>

            </li>

        </ul>

    </div>

    <script>

        $('.phonenav_btn').click(function () {

            if ($(this).hasClass('open')) {

                $(this).removeClass('open');

                $('#nav_mask').hide();

                $('#phonenav_list').stop(true, true).animate({ 'right': '-50%' })

            } else {

                $(this).addClass('open');

                $('#phonenav_list').stop(true, true).animate({ 'right': '0' });

                $('#nav_mask').show();

            }









        })

        $('#nav_mask').click(function () {

            $(this).hide();

            $('#phonenav_list').animate({ 'right': '-50%' })

        })

    </script>

    

        <!-- 顶部star -->

<div id="fixed_box" class="visible-lg">

    <div id="pcheadtop">

        <div class="container">

            <div class="pchead_left">

                <div class="pull-left"><a href="#"><?php echo $sysconf['companyname']; ?></a></div>

                <div class="btn-group pull-left">

                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">

                        网站导航

                        <span class="caret"></span>

                    </a>

                    <ul class="dropdown-menu" style="overflow-y: auto;height: 150px;">

                        <li <?php if($mark == 'index'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('/'); ?>" target="_blank">

                                <span>首页</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mba'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mba'); ?>" target="_blank">

                                <span>MBA</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mpa'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mpa'); ?>" target="_blank">

                                <span>MPA</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mpacc'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mpacc'); ?>" target="_blank">

                                <span>MPACC</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mea'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mea'); ?>" target="_blank">

                                <span>MEM</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mta'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mta'); ?>" target="_blank">

                                <span>MTA</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'maud'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/maud'); ?>" target="_blank">

                                <span>MAUD</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'mlis'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/mlis'); ?>" target="_blank">

                                <span>MLIS</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'team'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/team'); ?>" target="_blank">

                                <span>名师团队</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'video'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/video'); ?>" target="_blank">

                                <span>视频课程</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'manageZx'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/manageZx'); ?>" target="_blank">

                                <span>管联资讯</span>

                            </a>

                        </li>



                        <li <?php if($mark == 'yearTest'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/yearTest'); ?>" target="_blank">

                                <span>历年真题</span>

                            </a>

                        </li>

                        <li <?php if($mark == 'manageZt'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/manageZt'); ?>" target="_blank">

                                <span>管联专题</span>

                            </a>

                        </li>



                        <li <?php if($mark == 'about'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/about'); ?>" target="_blank">

                                <span>关于我们</span>

                            </a>

                        </li>



                        <li <?php if($mark == 'applyCenter'): ?>class="active"<?php endif; ?>>

                            <a href="<?php echo url('home/index/applyCenter'); ?>" target="_blank">

                                <span>报名中心</span>

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

            <div class="pchead_right">

                <div class="pc_hd_rbox">

                    <?php if(empty($userphone) || (($userphone instanceof \think\Collection || $userphone instanceof \think\Paginator ) && $userphone->isEmpty())): ?>

                        <p>您好！请</p>

                        <!-- <p class="openlogin"><a style="color:#ff0000">登录</a></p> -->

                        <p><a href="javascript:vooid(0)" class="bounceInDown dialog demo0" style="color:#ff0000">登录</a>

                        </p>

                        <?php else: ?>

                        <p>您好！尊敬的<?php echo $userphone; ?>的用户</p>

                        <p style="color:#ff0000" class="exit_login">退出登录</p>

                    <?php endif; ?>

                    <p style="position:relative;padding:0 5px;"><i class="line_i"></i></p>

                    <p><img src="/bofang/public/home/images/phone_tel.png" width="17px"></p>

                    <p class="phone_num"><?php echo $sysconf['tel']; ?></p>

                </div>

            </div>

        </div>

    </div>

    <!-- ver_pic -->

    <div id="ver_pic">

        <div class="container">

            <img src="/bofang/public/home/images/vel_pic.jpg">

        </div>



    </div>

    <!-- search -->

    <div id="pc_search">

        <div class="container">

            <div class="pc_log pull-left">

                <a href="<?php echo url('/'); ?>">

                    <img src="/bofang/public/home/images/pc_logo.jpg">

                </a>

            </div>

            <div class="search_input pull-left">

                <form action="<?php echo url('home/Index/search'); ?>" method="post" name="myform">

                    <div class="search_top">

                        <div class="sh_input_left">

                            <!-- <input type="text" placeholder="搜索你想知道的内容"> -->

                            <input type="text" name="keyword" class="form-control" placeholder="请输入关键字" required>

                        </div>

                        <button class="sh_button" name="btn-submit" value="搜索" type="submit" style="border:none;">

                            搜索

                        </button>

                        

                    </div>

                </form>

                    <div class="search_bottom">

                        <p>热门搜索：</p>

                        <?php if(is_array($hotsearch) || $hotsearch instanceof \think\Collection || $hotsearch instanceof \think\Paginator): $i = 0; $__LIST__ = $hotsearch;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                            <p><a href="<?php echo url('home/index/search'); ?>?keyword=<?php echo subtext($obj['topic'],0,6); ?>"><?php echo subtext($obj['topic'],0,6); ?></a></p>

                        <?php endforeach; endif; else: echo "" ;endif; ?>

                    </div>

            </div>

            <div class="sh_zhixun pull-left">

                <div class="tel_div pull-left">

                    <img src="/bofang/public/home/images/phone_white.png">

                </div>

                <div class="zx_p pull-left">

                    <p style="font-size:17px;margin-bottom:0px;margin-top:5px;margin-bottom:3px;    line-height: 14px;">

                        24小时咨询热线</p>

                    <p style="font-size:20px;font-weight:700; color:#003f87; "><?php echo $sysconf['tel']; ?></p>

                </div>

            </div>

        </div>

    </div>

    <div id="pc_nav">

        <div class="container">

            <ul class="nav_ul">

                <li <?php if($mark == 'index'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('/'); ?>" target="_blank">

                        <span>首页</span>

                    </a>

                </li>

                <li <?php if($mark == 'mba'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mba'); ?>" target="_blank">

                        <span>MBA</span>

                    </a>

                </li>

                <li <?php if($mark == 'mpa'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mpa'); ?>" target="_blank">

                        <span>MPA</span>

                    </a>

                </li>

                <li <?php if($mark == 'mpacc'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mpacc'); ?>" target="_blank">

                        <span>MPACC</span>

                    </a>

                </li>

                <li <?php if($mark == 'mea'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mea'); ?>" target="_blank">

                        <span>MEM</span>

                    </a>

                </li>

                <li <?php if($mark == 'mta'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mta'); ?>" target="_blank">

                        <span>MTA</span>

                    </a>

                </li>

                <li <?php if($mark == 'maud'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/maud'); ?>" target="_blank">

                        <span>MAUD</span>

                    </a>

                </li>

                <li <?php if($mark == 'mlis'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/mlis'); ?>" target="_blank">

                        <span>MLIS</span>

                    </a>

                </li>

                <li <?php if($mark == 'team'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/team'); ?>" target="_blank">

                        <span>名师团队</span>

                    </a>

                </li>

                <li <?php if($mark == 'video'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/video'); ?>" target="_blank">

                        <span>视频课程</span>

                    </a>

                </li>

                <li <?php if($mark == 'manageZx'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/manageZx'); ?>" target="_blank">

                        <span>管联资讯</span>

                    </a>

                </li>



                <li <?php if($mark == 'yearTest'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/yearTest'); ?>" target="_blank">

                        <span>历年真题</span>

                    </a>

                </li>

                <li <?php if($mark == 'manageZt'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/manageZt'); ?>" target="_blank">

                        <span>管联专题</span>

                    </a>

                </li>



                <li <?php if($mark == 'about'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/about'); ?>" target="_blank">

                        <span>关于我们</span>

                    </a>

                </li>



                <li <?php if($mark == 'applyCenter'): ?>class="active"<?php endif; ?>>

                    <a href="<?php echo url('home/index/applyCenter'); ?>" target="_blank">

                        <span>报名中心</span>

                    </a>

                </li>

            </ul>

        </div>

    </div>

</div>

<!-- 顶部end -->

    

    

    <div>

        <!-- content -->

        <div id="content">

            <div class="container">

                <!--  -->

                <div class="mobile_slider hidden-lg">

                    <div class="swiper-container" id="myzhibo">

                        <div class="swiper-wrapper">

                            <div class="swiper-slide"><a href="<?php echo url('home/index/yearTest',['type'=>0]); ?>" <?php if($type == '0'): ?>class="select"<?php endif; ?>>全部</a></div>

                            <?php if(is_array($dataType) || $dataType instanceof \think\Collection || $dataType instanceof \think\Paginator): $i = 0; $__LIST__ = $dataType;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                                <div class="swiper-slide"><a href="<?php echo url('home/index/yearTest',['type'=>$obj['Id']]); ?>"
                                        <?php if($type == $obj['Id']): ?>class="select"<?php endif; ?>><?php echo $obj['topic']; ?></a></div>

                            <?php endforeach; endif; else: echo "" ;endif; ?>



                        </div>

                    </div>

                    <script type="text/javascript">

                        new Swiper('#myzhibo', { lazyLoading: true, autoplay: false, lazyLoading: true, slidesPerView: 4 });

                    </script>

                </div>

                <!--  -->

                <div class="content_left">

                    <div class="yeartest_top visible-lg">

                        <div class="yt_subject">

                            <a href="<?php echo url('home/index/yearTest',['type'=>0]); ?>" <?php if($type == '0'): ?>class="type"

                                <?php endif; ?>>全部</a>

                            <?php if(is_array($dataType) || $dataType instanceof \think\Collection || $dataType instanceof \think\Paginator): $i = 0; $__LIST__ = $dataType;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                                <a href="<?php echo url('home/index/yearTest',['type'=>$obj['Id'],'years'=>$years]); ?>" <?php if($type == $obj['Id']): ?>class="type"

                                    <?php endif; ?>>

                                    <?php echo $obj['topic']; ?>

                                </a>

                            <?php endforeach; endif; else: echo "" ;endif; ?>

                        </div>

                    </div>

                    <div id="m_yead" class="yeartest_botton mobile_content">
                        <div class="yt_date">
                            <ul class="myead_ul">
                                <li <?php if($years == '0'): ?>class="type"<?php endif; ?>>
                                    <a href="<?php echo url('home/index/yearTest',['type'=>$type,'years'=>0]); ?>">不限</a>
                                </li>
                                <?php if(is_array($yearstype) || $yearstype instanceof \think\Collection || $yearstype instanceof \think\Paginator): $i = 0; $__LIST__ = $yearstype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>
                                    <li <?php if($years == $obj['Id']): ?>class="type"<?php endif; ?>>

                                        <a
                                            href="<?php echo url('home/index/yearTest',['type'=>$type,'years'=>$obj['Id']]); ?>"><?php echo $obj['topic']; ?></a>

                                    </li>
                                <?php endforeach; endif; else: echo "" ;endif; ?>

                            </ul>

                        </div>

                    </div>

                    <!--  -->

                   
                    <!--  -->

                    <div class="content_l_list m_list_sc">

                        <ul>

                            <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                                <li>

                                    <a href="<?php echo url('home/article/index',['Id'=>$obj['Id']]); ?>" title="<?php echo $obj['topic']; ?>"
                                        alt="<?php echo $obj['topic']; ?>">

                                        <div class="sc_text_topic list_layer1 oneline"><?php echo $obj['topic']; ?></div>

                                        <div class="sc_text_intro list_layer2 twoline"><?php echo $obj['intro']; ?>

                                        </div>

                                    </a>

                                    <div class="time_hit visible-lg">

                                        <div class="sc_text_time pull-left"><?php echo $obj['date']; ?></div>

                                        <div class="sc_text_hit pull-right">

                                            <p class="hit_pic"><img src="/bofang/public/home/images/eye.png"></p>

                                            <p class="hit_num"><?php echo $obj['hit']; ?></p>

                                        </div>

                                    </div>

                                    <div class="list_layer3 hidden-lg">

                                        <div class="pull-left">

                                           <?php echo subtext($obj['date'],0,11); ?>

                                        </div>

                                        <div class="pull-right">

                                            <p><img src="/bofang/public/home/images/eye.png"></p>

                                            <p><?php echo $obj['hit']; ?></p>

                                        </div>

                                    </div>

                                </li>

                            <?php endforeach; endif; else: echo "" ;endif; ?>

                        </ul>

                    </div>
                    <div class="pages">
                        <?php echo $data->render(); ?>
                    </div>


                    <!--  -->



                    <!--  -->

                </div>

                <div class="content_right visible-lg">

    <div class="content_top">

        资讯新闻

    </div>

    <div class="content_r_list">

        <ul>

            <?php if(is_array($glinfor) || $glinfor instanceof \think\Collection || $glinfor instanceof \think\Paginator): $i = 0; $__LIST__ = $glinfor;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                <li>

                    <a href="<?php echo url('home/article/index',['Id'=>$obj['Id']]); ?>" title=" <?php echo $obj['topic']; ?>" alt=" <?php echo $obj['topic']; ?>">

                        <p class="point">

                            <img src="/bofang/public/home/images/point.jpg">

                        </p>

                        <p class="conten_t_topic">

                            <?php echo $obj['topic']; ?>

                        </p>

                    </a>

                </li>

            <?php endforeach; endif; else: echo "" ;endif; ?>

        </ul>

    </div>

    <div class="hotschool_box1">

        <div class="hotb1_ttop">

            <p class="hotb1_ttp1"><img src="/bofang/public/home/images/sch_icon.png"></p>

            <p class="hotb1_ttp2">江西热门院校</p>

        </div>

        <div class="hotb1_list">

            <ul>

                <?php if(is_array($hotschools) || $hotschools instanceof \think\Collection || $hotschools instanceof \think\Paginator): $i = 0; $__LIST__ = $hotschools;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                    <li><a><?php echo $obj['topic']; ?></a></li>

                <?php endforeach; endif; else: echo "" ;endif; ?>

            </ul>

        </div>

    </div>

    <?php if($mark != 'applyCenter'): ?>

        <div class="content_ke">

            <div class="ck_top">课程推荐</div>

            <?php if(is_array($tjvideo) || $tjvideo instanceof \think\Collection || $tjvideo instanceof \think\Paginator): $i = 0; $__LIST__ = $tjvideo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                <div class="videob1">

                    <a href="<?php echo url('home/article/videoArt'); ?>?Id=<?php echo $obj['Id']; ?>">

                        <div class="video1">

                            <img src="<?php echo upic($obj['pic']); ?>">

                        </div>

                        <div class="video1_intro">

                            <?php echo $obj['topic']; ?>

                        </div>

                    </a>

                    <div class="video1_listen">

                        <p class="vl1_left">写作</p>

                        <p class="vl1_right"><?php echo $obj['hit']; ?>人试听</p>

                    </div>

                </div>

            <?php endforeach; endif; else: echo "" ;endif; ?>

        </div>

    <?php endif; ?>

</div>

            </div>

        </div>

    </div>



    <!-- links -->

<div id="links" class="visible-lg">

    <div class="container">

        <div class="links_topic">友情链接</div>

        <div class="links_name">

            <?php if(is_array($links) || $links instanceof \think\Collection || $links instanceof \think\Paginator): $i = 0; $__LIST__ = $links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?>

                <a href="<?php echo $obj['linkurl']; ?>" target="_blank"><?php echo $obj['topic']; ?></a>

            <?php endforeach; endif; else: echo "" ;endif; ?>

        </div>

    </div>

</div>

<!-- foot -->

<div id="foot" class="visible-lg">

    <div class="container">

        <div class="foot_nav">

            <a href="<?php echo url('home/index/about'); ?>">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="<?php echo url('home/index/video'); ?>">视频课程</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="<?php echo url('home/index/team'); ?>">名师团队</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="<?php echo url('home/index/applyCenter'); ?>">报名中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;

            <a href="<?php echo url('home/index/about','sty=4'); ?>">网站地图</a>

        </div>

        <div class="foot_center">

            <div class="fc_box pull-left">

                <div class="fc_box_top">

                    <p class="fc_box_pic"><img src="/bofang/public/home/images/addresspic.png"></p>

                    <p class="fc_box_p">江西专硕在线地址：</p>

                </div>

                <div class="fc_add"><?php echo $sysconf['address']; ?></div>

                <div class="fc_box_top">

                    <p class="fc_box_pic"><img src="/bofang/public/home/images/fc_tel.png"></p>

                    <p class="fc_box_p">联系电话：</p>

                </div>

                <div class="fc_add"><?php echo $sysconf['tel']; ?></div>

            </div>

            <div class="fc_code pull-right">

                <div class="code_box">

                    <p class="code_imag"><img src="/bofang/public/home/images/code1.jpg"></p>

                    <p class="code_p">微信公众号</p>

                </div>

                <div class="code_box">

                    <p class="code_imag"><img src="/bofang/public/home/images/code1.jpg"></p>

                    <p class="code_p">微信群号</p>

                </div>

            </div>

        </div>

        <div class="foot_bottom">

            <p>版权所有 2004-2018 <?php echo $sysconf['companyname']; ?> &nbsp;&nbsp;&nbsp; <?php echo $sysconf['icpnote']; ?> </p>

        </div>

    </div>

</div>

<div id="HBox">

    <div class="box_left_lg  visible-lg">

        <div class="c_log">

            <img src="/bofang/public/home/images/xlogo.png">

        </div>

        <div class="clog_d">

            <div class="clog_item">

                <p><img src="/bofang/public/home/images/gou.png"></p>

                <p>免费试听所有视频课程</p>

            </div>

            <div class="clog_item">

                <p><img src="/bofang/public/home/images/gou.png"></p>

                <p>名师在线指导讲解疑难杂点</p>

            </div>

            <div class="clog_item">

                <p><img src="/bofang/public/home/images/gou.png"></p>

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

                        <img src="/bofang/public/home/images/checkbox.png" class="checkimg">
                    </div>
                    <div class="box_text">

                        我已同意江西专硕在线<span class="xieyi"><a
                                href="https://view.officeapps.live.com/op/view.aspx?src=<?php echo $_SERVER['HTTP_HOST']; ?>/bofang/uploads/files/ss.docx" style="color:#999">《服务使用协议》</a></span>

                    </div>

                </div>

                </li>



                <li><input type="submit" value="确认" class="submitBtn" /></li>

                <li>

                    <div>

                        <p style="font-size:14px; color:#f71818">注：拨打联系电话<?php echo $sysconf['mobile']; ?>获取登录权限哦！</p>

                    </div>

                </li>

            </ul>

        </form>

    </div>
   


</div>
<script type="text/javascript" src="/bofang/public/home/js/foot.js"></script>
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
            url: '<?php echo url("home/index/appoint"); ?>',
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

            url: '<?php echo url("home/index/appoint"); ?>',

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

            url: '<?php echo url("home/index/appoint"); ?>',

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

            url: '<?php echo url("index/login"); ?>',

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

            url: '<?php echo url("index/endlogin"); ?>',

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

    

        <div id="phone_footer" class="hidden-lg">

            <div class="container">

                <p class="phone_cneter">

                    <a href="<?php echo url('home/index/about'); ?>">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="<?php echo url('home/index/applyCenter'); ?>">报名中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="<?php echo url('home/index/about',['sty'=>4]); ?>">网站地图</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                    <a href="<?php echo url('/'); ?>">返回首页</a>

                </p>

                <p class="phone_cneter">

                    <?php echo $sysconf['address']; ?>

                </p>

                <p class="phone_cneter">

                    联系电话：<?php echo $sysconf['tel']; ?>

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

    

    <?php if(!(empty($sysconf) || (($sysconf instanceof \think\Collection || $sysconf instanceof \think\Paginator ) && $sysconf->isEmpty()))): ?><?php echo $sysconf['sys_code']; endif; ?>

</body>



</html>