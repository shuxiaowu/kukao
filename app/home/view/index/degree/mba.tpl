<extend name="common/common" />

<block name="main">

    <div class="visible-lg">

        <!-- index2 -->

        <div id="index2">

            <div class="container">

                <div class="zhibo_lunbo pull-left">

                    <div class="phone-swiper">

                        <div class="swiper-container" id="myzhibo">

                            <div class="swiper-wrapper">
                                <volist name="advtoppic" id="obj">
                                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="{:upic($obj['pic'])}"

                                            width="100%" alt="" height="357px" /></a></div>
                                </volist>

                            </div>

                            <div class="swiper-pagination selfpaginate"></div>

                        </div>

                    </div>

                    <script type="text/javascript">

                        new Swiper('#myzhibo', { pagination: '#myzhibo .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

                    </script>

                </div>

                <div class="kaoshi_dagang pull-left">

                    <volist name="datafocustop" id="obj" offset="0" length="1">

                        <div class="list_title">{$obj.topic}</div>

                    </volist>

                    <div class="list_ul list_ul_line">

                        <ul>

                            <volist name="datafocus" id="obj" offset="0" length="4">

                                <li>

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">

                                        <div class="list_ul_topic pull-left">{$obj['type']} | {$obj.topic}</div>

                                        <div class="pull-right">{$obj.date | subtext=0,11}</div>

                                    </a>

                                </li>

                            </volist>

                        </ul>

                    </div>

                    <volist name="datafocustop" id="obj" offset="1" length="1">

                        <div class="list_title" style="margin-top:20px;">{$obj.topic}</div>

                    </volist>

                    <div class="list_ul">

                        <ul>

                            <volist name="datafocus" id="obj" offset="4" length="4">

                                <li>

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">

                                        <div class="list_ul_topic pull-left">{$obj['type']} | {$obj.topic}</div>

                                        <div class="pull-right">{$obj['date'] | subtext=0,11}</div>

                                    </a>

                                </li>

                            </volist>

                        </ul>

                    </div>

                </div>

            </div>

        </div>

        <!-- index3 -->

        <div id="index3">

            <div class="container">

                <ul>

                    <li>

                        <a href="{:url('home/index/about',['Id'=>5])}">

                            <div class="index3_icon">

                                <img src="__img__/kk1.png">

                            </div>

                            <div class="index3_topic">招生简章</div>

                        </a>

                    </li>

                    <li>

                        <a href="{:url('home/index/video')}">

                            <div class="index3_icon">

                                <img src="__img__/kk2.png">

                            </div>

                            <div class="index3_topic">推荐课程</div>

                        </a>

                    </li>

                    <li>

                        <a href="{:url('home/index/yearTest')}">

                            <div class="index3_icon">

                                <img src="__img__/kk3.png">

                            </div>

                            <div class="index3_topic">历年真题</div>

                        </a>

                    </li>

                    <li>

                        <a href="{:url('home/index/about',['Id'=>4])}">

                            <div class="index3_icon">

                                <img src="__img__/kk4.png">

                            </div>

                            <div class="index3_topic">报考指南</div>

                        </a>

                    </li>

                </ul>

            </div>

        </div>

        <!--  -->

        <div id="kaoyan_h">

            <div class="container">

                <img src="__img__/kaoyan_h.jpg">

                <a href="#" class="btn_liji"></a>

            </div>

        </div>

        <!-- index4 -->

        <div id="index4">

            <div class="container">

                <div class="index4-left pull-left">

                    <div class="in4_top_list">

                        <div class="in4_titlename pull-left">
                                <a href="{:url('home/index/'.$mark,['urlname'=>$urlname,'type'=>0])}" <eq name="type"

                                    value="0">class="active"</eq>>全部</a>
                            <volist name="datainftype" id="obj">
                               
    
                                <a href="{:url('home/index/'.$mark,['urlname'=>$urlname,'type'=>$obj['Id']])}" <eq name="type"

                                    value="$obj['Id']">class="active"</eq>>{$obj.topic}</a>

                            </volist>





                        </div>

                        <div class="in4_more pull-right">

                            <a href="{:url('home/index/mbaMoreBtn',['sty'=>$sty,'mark'=>$mark])}">更多<span>></span></a>

                        </div>

                    </div>

                    <div class="school_text">

                        <ul>
                            <volist name="data" id="obj">
                                <li>
                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">
                                        <div class="sc_text_topic">{$obj.topic}</div>
                                        <div class="sc_text_intro">{$obj.intro}
                                        </div>
                                    </a>
                                    <div class="time_hit">
                                        <div class="sc_text_time pull-left">{$obj.date|subtext=0,10}</div>

                                        <div class="sc_text_hit pull-right">

                                            <p class="hit_pic"><img src="__img__/eye.png"></p>

                                            <p class="hit_num">{$obj.hit}</p>

                                        </div>

                                    </div>
                                </li>
                             </volist>
                        </ul>

                    </div>

                </div>

                <div class="index4-right pull-left">

                    <div class="in4_r_top">

                        <div class="in4r_ttop">

                            <p class="in4r_ttp1"><img src="__img__/icon_kk.png"></p>

                            <p class="in4r_ttp2">MBA推荐院校</p>

                        </div>

                        <div class="in4r_tbottom">

                            <ul>

                                <volist name="hotschools" id="obj" offset="0" length="6">

                                    <li>

                                        <a href="javascript:;">{$obj.topic}</a>

                                    </li>

                                </volist>



                            </ul>

                        </div>

                    </div>

                    <div class="in4r_center">

                        MBA报考流程

                    </div>

                    <div class="in4r_bottom">

                        <div class="in4r_bitem first">

                            <a>

                                <div class="in4r_num">

                                    1

                                </div>

                                <div class="in4r_name">网上报名</div>

                            </a>

                        </div>

                        <div class="in4r_bitem two">

                            <a>

                                <div class="in4r_num">

                                    2

                                </div>

                                <div class="in4r_name">现场确认</div>

                            </a>

                        </div>

                        <div class="in4r_bitem three">

                            <a>

                                <div class="in4r_num">

                                    3

                                </div>

                                <div class="in4r_name">打印准考证</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    4

                                </div>

                                <div class="in4r_name">初试（全国联考）</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    5

                                </div>

                                <div class="in4r_name">查询联考成绩</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    6

                                </div>

                                <div class="in4r_name">复试</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    7

                                </div>

                                <div class="in4r_name">体检</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    8

                                </div>

                                <div class="in4r_name">初步录取</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    9

                                </div>

                                <div class="in4r_name">调档、政审、签订培养协议</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    10

                                </div>

                                <div class="in4r_name">发放录取通知书</div>

                            </a>

                        </div>

                        <div class="in4r_bitem default">

                            <a>

                                <div class="in4r_num">

                                    11

                                </div>

                                <div class="in4r_name">新生入学报到</div>

                            </a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!--  -->

        <div id="kaoyan_h">

            <div class="container">

                <img src="__img__/kaoyan_h.jpg">

                <a href="#" class="btn_liji"></a>

            </div>

        </div>

        <!-- team -->

        <div id="team">

            <div class="container">

                <div class="team_top">

                    <div class="team_h pull-left">名师团队</div>

                    <div class="team_type pull-right">

                         <volist name="teaminftype" id="obj">

                            <a href="javascript:void(0);">{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="team_bottom">

                    <ul>

                        <volist name="team" id="obj">

                            <li>

                                <a href="javascript:void(0)" title="" alt="">

                                    <div class="team_pic">

                                        <img src="{:npic($obj['pic'])}" width="100%">

                                    </div>

                                    <div class="team_name">{$obj.topic}</div>

                                    <div class="team_school">{$obj.joptitle}</div>

                                </a>

                            </li>

                        </volist>
                    </ul>

                </div>

            </div>

        </div>

    </div>

    <include file="mobile/mba">

</block>