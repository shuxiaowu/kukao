<!-- 顶部star -->

<div id="fixed_box" class="visible-lg">

    <div id="pcheadtop">

        <div class="container">

            <div class="pchead_left">

                <div class="pull-left"><a href="#">{$sysconf.companyname}</a></div>

                <div class="btn-group pull-left">

                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">

                        网站导航

                        <span class="caret"></span>

                    </a>

                    <ul class="dropdown-menu" style="overflow-y: auto;height: 150px;">

                        <li <eq name="mark" value="index">class="active"</eq>>

                            <a href="{:url('/')}" target="_blank">

                                <span>首页</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mba">class="active"</eq>>

                            <a href="{:url('home/index/mba')}" target="_blank">

                                <span>MBA</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mpa">class="active"</eq>>

                            <a href="{:url('home/index/mpa')}" target="_blank">

                                <span>MPA</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mpacc">class="active"</eq>>

                            <a href="{:url('home/index/mpacc')}" target="_blank">

                                <span>MPACC</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mea">class="active"</eq>>

                            <a href="{:url('home/index/mea')}" target="_blank">

                                <span>MEM</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mta">class="active"</eq>>

                            <a href="{:url('home/index/mta')}" target="_blank">

                                <span>MTA</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="maud">class="active"</eq>>

                            <a href="{:url('home/index/maud')}" target="_blank">

                                <span>MAUD</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="mlis">class="active"</eq>>

                            <a href="{:url('home/index/mlis')}" target="_blank">

                                <span>MLIS</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="team">class="active"</eq>>

                            <a href="{:url('home/index/team')}" target="_blank">

                                <span>名师团队</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="video">class="active"</eq>>

                            <a href="{:url('home/index/video')}" target="_blank">

                                <span>视频课程</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="manageZx">class="active"</eq>>

                            <a href="{:url('home/index/manageZx')}" target="_blank">

                                <span>管联资讯</span>

                            </a>

                        </li>



                        <li <eq name="mark" value="yearTest">class="active"</eq>>

                            <a href="{:url('home/index/yearTest')}" target="_blank">

                                <span>历年真题</span>

                            </a>

                        </li>

                        <li <eq name="mark" value="manageZt">class="active"</eq>>

                            <a href="{:url('home/index/manageZt')}" target="_blank">

                                <span>管联专题</span>

                            </a>

                        </li>



                        <li <eq name="mark" value="about">class="active"</eq>>

                            <a href="{:url('home/index/about')}" target="_blank">

                                <span>关于我们</span>

                            </a>

                        </li>



                        <li <eq name="mark" value="applyCenter">class="active"</eq>>

                            <a href="{:url('home/index/applyCenter')}" target="_blank">

                                <span>报名中心</span>

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

            <div class="pchead_right">

                <div class="pc_hd_rbox">

                    <empty name="userphone">

                        <p>您好！请</p>

                        <!-- <p class="openlogin"><a style="color:#ff0000">登录</a></p> -->

                        <p><a href="javascript:vooid(0)" class="bounceInDown dialog demo0" style="color:#ff0000">登录</a>

                        </p>

                        <else />

                        <p>您好！尊敬的{$userphone}的用户</p>

                        <p style="color:#ff0000" class="exit_login">退出登录</p>

                    </empty>

                    <p style="position:relative;padding:0 5px;"><i class="line_i"></i></p>

                    <p><img src="__img__/phone_tel.png" width="17px"></p>

                    <p class="phone_num">{$sysconf.tel}</p>

                </div>

            </div>

        </div>

    </div>

    <!-- ver_pic -->

    <div id="ver_pic">

        <div class="container">

            <img src="__img__/vel_pic.jpg">

        </div>



    </div>

    <!-- search -->

    <div id="pc_search">

        <div class="container">

            <div class="pc_log pull-left">

                <a href="{:url('/')}">

                    <img src="__img__/pc_logo.jpg">

                </a>

            </div>

            <div class="search_input pull-left">

                <form action="{:url('home/Index/search')}" method="post" name="myform">

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

                        <volist name="hotsearch" id="obj">

                            <p><a href="{:url('home/index/search')}?keyword={$obj.topic|subtext=0,6}">{$obj.topic|subtext=0,6}</a></p>

                        </volist>

                    </div>

            </div>

            <div class="sh_zhixun pull-left">

                <div class="tel_div pull-left">

                    <img src="__img__/phone_white.png">

                </div>

                <div class="zx_p pull-left">

                    <p style="font-size:17px;margin-bottom:0px;margin-top:5px;margin-bottom:3px;    line-height: 14px;">

                        24小时咨询热线</p>

                    <p style="font-size:20px;font-weight:700; color:#003f87; ">{$sysconf.tel}</p>

                </div>

            </div>

        </div>

    </div>

    <div id="pc_nav">

        <div class="container">

            <ul class="nav_ul">

                <li <eq name="mark" value="index">class="active"</eq>>

                    <a href="{:url('/')}" target="_blank">

                        <span>首页</span>

                    </a>

                </li>

                <li <eq name="mark" value="mba">class="active"</eq>>

                    <a href="{:url('home/index/mba')}" target="_blank">

                        <span>MBA</span>

                    </a>

                </li>

                <li <eq name="mark" value="mpa">class="active"</eq>>

                    <a href="{:url('home/index/mpa')}" target="_blank">

                        <span>MPA</span>

                    </a>

                </li>

                <li <eq name="mark" value="mpacc">class="active"</eq>>

                    <a href="{:url('home/index/mpacc')}" target="_blank">

                        <span>MPACC</span>

                    </a>

                </li>

                <li <eq name="mark" value="mea">class="active"</eq>>

                    <a href="{:url('home/index/mea')}" target="_blank">

                        <span>MEM</span>

                    </a>

                </li>

                <li <eq name="mark" value="mta">class="active"</eq>>

                    <a href="{:url('home/index/mta')}" target="_blank">

                        <span>MTA</span>

                    </a>

                </li>

                <li <eq name="mark" value="maud">class="active"</eq>>

                    <a href="{:url('home/index/maud')}" target="_blank">

                        <span>MAUD</span>

                    </a>

                </li>

                <li <eq name="mark" value="mlis">class="active"</eq>>

                    <a href="{:url('home/index/mlis')}" target="_blank">

                        <span>MLIS</span>

                    </a>

                </li>

                <li <eq name="mark" value="team">class="active"</eq>>

                    <a href="{:url('home/index/team')}" target="_blank">

                        <span>名师团队</span>

                    </a>

                </li>

                <li <eq name="mark" value="video">class="active"</eq>>

                    <a href="{:url('home/index/video')}" target="_blank">

                        <span>视频课程</span>

                    </a>

                </li>

                <li <eq name="mark" value="manageZx">class="active"</eq>>

                    <a href="{:url('home/index/manageZx')}" target="_blank">

                        <span>管联资讯</span>

                    </a>

                </li>



                <li <eq name="mark" value="yearTest">class="active"</eq>>

                    <a href="{:url('home/index/yearTest')}" target="_blank">

                        <span>历年真题</span>

                    </a>

                </li>

                <li <eq name="mark" value="manageZt">class="active"</eq>>

                    <a href="{:url('home/index/manageZt')}" target="_blank">

                        <span>管联专题</span>

                    </a>

                </li>



                <li <eq name="mark" value="about">class="active"</eq>>

                    <a href="{:url('home/index/about')}" target="_blank">

                        <span>关于我们</span>

                    </a>

                </li>



                <li <eq name="mark" value="applyCenter">class="active"</eq>>

                    <a href="{:url('home/index/applyCenter')}" target="_blank">

                        <span>报名中心</span>

                    </a>

                </li>

            </ul>

        </div>

    </div>

</div>

<!-- 顶部end -->