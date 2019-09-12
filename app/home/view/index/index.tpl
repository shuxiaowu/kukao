<extend name="common/common" />

<block name="main">
    {:token()}
    <div class="pc_box visible-lg">

        <!-- lt_nav start -->
        <div id="lt_nav">
            <div class="container">

                <div class="item_lt_nav">

                    <div class="item_lt_title">MBA</div>

                    <div class="item_lt_a">

                        <volist name="mbainftype" id="obj">

                            <a href="{:url('home/index/mbaMoreBtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}" alt="">MBA{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="item_lt_nav">

                    <div class="item_lt_title">MPA</div>

                    <div class="item_lt_a">

                        <volist name="mpainftype" id="obj">

                            <a href="{:url('home/index/mbaMoreBtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}" alt="">MPA{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="item_lt_nav">

                    <div class="item_lt_title">MPACC</div>

                    <div class="item_lt_a">

                        <volist name="mpaccinftype" id="obj">

                            <a href="{:url('home/index/mbaMoreBtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}" alt="">MPACC{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

            </div>

        </div>

        <!-- lt_nav end -->

        <!-- jujiao start -->

        <div id="jujiao">

            <div class="container">

                <div class="jujiao_left pull-left">

                    <!-- Swiper -->

                    <div class="swiper-container gallery-top">

                        <div class="swiper-wrapper">
                            <volist name="advindexpic" id="obj">
                                <div class="swiper-slide" style="height: 357px;">
                                    <img src="{:upic($obj['pic'])}" width="100%" height="100%">
                                </div>
                            </volist>
                        </div>

                        <!-- Add Arrows -->

                        <div class="swiper-button-next swiper-button-white"></div>

                        <div class="swiper-button-prev swiper-button-white"></div>

                    </div>

                    <div class="swiper-container gallery-thumbs">

                        <div class="swiper-wrapper">
                            <volist name="advindexpic" id="obj">
                                <div class="swiper-slide" style="width:202px;height:112px;">
                                    <img src="{:upic($obj['pic'])}" width="100%" height="100%">
                                </div>
                            </volist>
                        </div>

                    </div>



                </div>

                <div class="jujiao_right pull-left">

                    <div class="jujiao_h1">聚焦MBA</div>

                    <volist name="mbafocustop" id="obj" offset="0" length="1"> <a
                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}"
                            alt="{$obj.topic}">

                            <div class="list_title">{$obj.topic}</div>

                        </a></volist>

                    <div class="list_ul list_ul_line">

                        <ul>

                            <volist name="mbafocus" id="obj" offset="0" length="6">

                                <li>

                                    <div class="list_ul_topic pull-left"><a href="{:url('home/index/mbaMoreBtn')}"
                                            title="{$obj.topic}" alt="{$obj.topic}" class="inftype">{$obj.type}</a><span
                                            class="on_vel">|</span><a
                                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}"
                                            alt="{$obj.topic}" class="infmation">{$obj.topic}</a>

                                    </div>

                                    <div class="pull-right">{$obj.date|subtext=0,10}</div>

                                </li>

                            </volist>

                        </ul>

                    </div>

                    <volist name="mbafocustop" id="obj" offset="1" length="1"> <a
                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}"
                            alt="{$obj.topic}">

                            <div class="list_title list_down">{$obj.topic}</div>

                        </a></volist>

                    <div class="list_ul">

                        <ul>

                            <volist name="mbafocus" id="obj" offset="6" length="6">

                                <li>

                                    <div class="list_ul_topic pull-left"><a href="{:url('home/index/mbaMoreBtn')}"
                                            title="{$obj.topic}" alt="{$obj.topic}" class="inftype">{$obj.type}</a><span
                                            class="on_vel">|</span><a
                                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}"
                                            alt="{$obj.topic}" class="infmation">{$obj.topic}</a>

                                    </div>

                                    <div class="pull-right">{$obj.date|subtext=0,10}</div>

                                </li>

                            </volist>

                        </ul>

                    </div>

                </div>

            </div>

            <script>

                var galleryTop = new Swiper('.gallery-top', {

                    nextButton: '.swiper-button-next',

                    prevButton: '.swiper-button-prev',

                    spaceBetween: 10,

                });

                var galleryThumbs = new Swiper('.gallery-thumbs', {

                    spaceBetween: 10,

                    centeredSlides: false,

                    slidesPerView: 3,

                    touchRatio: 0.2,

                    slideToClickedSlide: true

                });

                galleryTop.params.control = galleryThumbs;

                galleryThumbs.params.control = galleryTop;



            </script>

        </div>

        <!-- kaoyan_line -->

        <div id="kaoyan_h">

            <div class="container">

                <img src="__img__/kaoyan_h.jpg">

                <a href="#" class="btn_liji"></a>

            </div>

        </div>

        <!-- hot_school -->

        <div id="hotschool">

            <div class="container">

                <div class="hotschool_box1 pull-left">

                    <div class="hotb1_ttop">

                        <p class="hotb1_ttp1"><img src="__img__/sch_icon.png"></p>

                        <p class="hotb1_ttp2">江西热门院校</p>

                    </div>

                    <div class="hotb1_list">

                        <ul>

                            <volist name="hotschools" id="obj">

                                <li><a href="javascript:;">{$obj.topic}</a></li>

                            </volist>

                        </ul>

                    </div>

                </div>

                <div class="hotschool_box2 pull-left">

                    <div class="hostb2_topnav">

                        <volist name="mbainftype" id="obj" offset="0" length="4">

                            <div class="hostb2_item">{$obj.topic}</div>

                        </volist>

                    </div>

                    <div class="list_ul">

                        <volist name="mbainftype" id="obj">

                            <ul class="list_bvel">

                                <volist name="obj['data']" id="vo">

                                    <li>

                                        <div class="list_ul_topic pull-left">

                                            <!-- <span style="font-size: 16px;

                                color: #0060ad;">{}</span> -->

                                            <!-- <span style="position:relative;padding:0 7px;"><i class="line_i"></i></span> -->

                                            <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt=""
                                                class="list_intro">{$vo.topic}</a>

                                        </div>

                                    </li>

                                </volist>

                            </ul>

                        </volist>

                    </div>

                </div>


                <div class="hotschool_box3 pull-left">

                    <div class="hostb3_top">

                        <p><img src="__img__/dali.png"></p>

                        <p style="font-size:22px;color:#131313;padding-left:10px;">考试日历</p>

                    </div>

                    <div class="hostb3_bottom">

                        <ul>

                            <volist name="calendar" id="obj">

                                <li>

                                    <a href="javascript:;">

                                        <div class="hotb3_p1">

                                            <span>{$obj.date|subtext=0,7}</span>

                                        </div>

                                        <div class="hotb3_b2">

                                            <span class="hotb3_p2">{$obj.direct|subtext=0,6}</span>

                                            <span class="hotb3_p3">{$obj.school|subtext=0,6}</span>

                                            <span class="hotb3_p4">{$obj.changemajor|subtext=0,6}</span>

                                        </div>

                                    </a>

                                </li>

                            </volist>

                        </ul>

                    </div>

                </div>

            </div>

        </div>

        <!-- hozhuan -->

        <div id="hotzhuan">

            <div class="container">

                <div class="zt_box">

                    <div class="zt_h1 pull-left">热门专题</div>

                    <div class="zt_more pull-right"><a href="{:url('home/index/manageZt')}">更多></a></div>

                </div>

                <ul class="hotbox">

                    <volist name="hottest" id="obj">

                        <li>

                            <a href="{:url('home/article/ztArticle',['Id'=>$obj['Id']])}">

                                <div class="zt_pic"><img src="{:upic($obj['pic'])}" width="100%"></div>

                                <div class="zt_title">{$obj.topic}</div>

                            </a>

                        </li>

                    </volist>

                </ul>

            </div>

        </div>

        <!-- MBASOURCE -->

        <div id="mba_source">

            <div class="container">

                <div class="mba_top">

                    <div class="ms_h1 pull-left">MBA</div>

                    <div class="ms_type pull-right">

                        <volist name="mbainftype" id="obj">

                            <a
                                href="{:url('home/index/mbamorebtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}">{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="mba_bottom">

                    <div class="mba_box1">

                        <div class="phone-swiper">

                            <div class="swiper-container" id="mymba">

                                <div class="swiper-wrapper">
                                    <volist name="advmbapic" id="obj">
                                        <div class="swiper-slide"><a href="javascript:void(0)"><img
                                                    src="{:upic($obj['pic'])}" width="100%" alt="" height="362px" /></a>
                                        </div>
                                    </volist>
                                </div>

                                <div class="swiper-pagination mbapaginate"></div>

                            </div>

                        </div>

                        <script type="text/javascript">

                            new Swiper('#mymba', { pagination: '#mymba .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

                        </script>

                    </div>

                    <div class="mba_box2">

                        <ul class="list_bvel">

                            <volist name="mbafocus" id="obj" offset="0" length="11">

                                <li>

                                    <div class="list_ul_topic pull-left">

                                        <span style="font-size: 16px;

                                        color: #0060ad;">{$obj['type']}</span>

                                        <span style="position:relative;padding:0 7px;"><i class="line_i"></i></span> <a
                                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt=""
                                            class="list_intro">{$obj.topic}sss</a>

                                    </div>

                                </li>

                            </volist>

                        </ul>

                    </div>

                    <div class="mba_box3">

                        <div class="mb3_p1">在线预约</div>

                        <div class="mb3_p2"><span>专业师资</span><span>专项定制</span><span>专注教学1</span></div>

                        <div class="mb3_form">

                            <label for="name">姓名：</label>

                            <input type="text" class="form-control mba_name" placeholder="请输入您的姓名">

                        </div>

                        <div class="mb3_form">

                            <label for="name">电话：</label>

                            <input type="text" class="form-control mba_tel" placeholder="请输入您的电话">

                        </div>

                        <div class="mb3_btn mba_btns">

                            预约申请

                        </div>

                        <div class="md3_code">

                            <div class="md3_code1 pull-left" style="margin-top:10px">

                                扫码关注

                            </div>

                            <div class="md3_code2 pull-left" style="margin:0 20px;">

                                <img src="__pic__{$sysconf['weixinpic']}">

                            </div>

                            <div class="md3_code2 pull-left">

                                <img src="__pic__{$sysconf['wxqpic']}">

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- MPA -->

        <div id="mba_source">

            <div class="container">

                <div class="mba_top">

                    <div class="ms_h1 pull-left">MPA</div>

                    <div class="ms_type pull-right">

                        <volist name="mpainftype" id="obj">

                            <a
                                href="{:url('home/index/mbamorebtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}">{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="mba_bottom">

                    <div class="mba_box1">

                        <div class="phone-swiper">

                            <div class="swiper-container" id="mymba2">

                                <div class="swiper-wrapper">
                                    <volist name="advmpapic" id="obj">
                                        <div class="swiper-slide"><a href="javascript:void(0)"><img
                                                    src="{:upic($obj['pic'])}" width="100%" alt="" height="362px" /></a>
                                        </div>
                                    </volist>
                                </div>

                                <div class="swiper-pagination mbapaginate"></div>

                            </div>

                        </div>

                        <script type="text/javascript">

                            new Swiper('#mymba2', { pagination: '#mymba2 .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

                        </script>

                    </div>

                    <div class="mba_box2">

                        <ul class="list_bvel">

                            <volist name="mpafocus" id="obj" offset="0" length="11">

                                <li>

                                    <div class="list_ul_topic pull-left">

                                        <span style="font-size: 16px;

                                                        color: #0060ad;">{$obj['type']}</span>

                                        <span style="position:relative;padding:0 7px;"><i class="line_i"></i></span> <a
                                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt=""
                                            class="list_intro">{$obj.topic}ss</a>

                                    </div>

                                </li>

                            </volist>

                        </ul>

                    </div>

                    <div class="mba_box3">

                        <div class="mb3_p1">在线预约</div>

                        <div class="mb3_p2"><span>专业师资</span><span>专项定制</span><span>专注教学2</span></div>

                        <div class="mb3_form">

                            <label for="name">姓名：</label>

                            <input type="text" class="form-control mpa_name" placeholder="请输入您的姓名">

                        </div>

                        <div class="mb3_form">

                            <label for="name">电话：</label>

                            <input type="text" class="form-control mpa_tel" placeholder="请输入您的电话">

                        </div>

                        <div class="mb3_btn mpa_btns">

                            预约申请

                        </div>

                        <div class="md3_code">

                            <div class="md3_code1 pull-left" style="margin-top:10px">

                                扫码关注

                            </div>

                            <div class="md3_code2 pull-left" style="margin:0 20px;">

                                <img src="__pic__{$sysconf['weixinpic']}">

                            </div>

                            <div class="md3_code2 pull-left">

                                <img src="__pic__{$sysconf['wxqpic']}">

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- MPACC -->

        <div id="mba_source">

            <div class="container">

                <div class="mba_top">

                    <div class="ms_h1 pull-left">MPACC</div>

                    <div class="ms_type pull-right">

                        <volist name="mpaccinftype" id="obj">

                            <a
                                href="{:url('home/index/mbamorebtn',['type'=>$obj['Id'],'sty'=>$obj['sty']])}">{$obj.topic}</a>

                        </volist>

                    </div>

                </div>

                <div class="mba_bottom">

                    <div class="mba_box1">

                        <div class="phone-swiper">

                            <div class="swiper-container" id="mymba3">

                                <div class="swiper-wrapper">

                                    <volist name="advmpaccpic" id="obj">
                                        <div class="swiper-slide"><a href="javascript:void(0)"><img
                                                    src="{:upic($obj['pic'])}" width="100%" alt="" height="362px" /></a>
                                        </div>
                                    </volist>

                                </div>

                                <div class="swiper-pagination mbapaginate"></div>

                            </div>

                        </div>

                        <script type="text/javascript">

                            new Swiper('#mymba3', { pagination: '#mymba3 .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

                        </script>

                    </div>

                    <div class="mba_box2">

                        <ul class="list_bvel">

                            <volist name="mpaccmeg" id="obj" offset="0" length="11">

                                <li>

                                    <div class="list_ul_topic pull-left">

                                        <span style="font-size: 16px;

                                                                color: #0060ad;">{$obj['type']}</span>

                                        <span style="position:relative;padding:0 7px;"><i class="line_i"></i></span> <a
                                            href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt=""
                                            class="list_intro">{$obj.topic}ss</a>

                                    </div>

                                </li>

                            </volist>

                        </ul>



                    </div>

                    <div class="mba_box3">

                        <div class="mb3_p1">在线预约</div>

                        <div class="mb3_p2"><span>专业师资</span><span>专项定制</span><span>专注教学</span></div>

                        <div class="mb3_form">

                            <label for="name">姓名：</label>

                            <input type="text" class="form-control mpacc_name" placeholder="请输入您的姓名">

                        </div>

                        <div class="mb3_form">

                            <label for="name">电话：</label>

                            <input type="text" class="form-control mpacc_tel" placeholder="请输入您的电话">

                        </div>

                        <div class="mb3_btn mpacc_btns">

                            预约申请

                        </div>

                        <div class="md3_code">

                            <div class="md3_code1 pull-left" style="margin-top:10px">

                                扫码关注

                            </div>

                            <div class="md3_code2 pull-left" style="margin:0 20px;">

                                <img src="__pic__{$sysconf['weixinpic']}">

                            </div>

                            <div class="md3_code2 pull-left">

                                <img src="__pic__{$sysconf['wxqpic']}">

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- kaoyan_line -->

        <div id="kaoyan_h">

            <div class="container">

                <img src="__img__/kaoyan_h.jpg">

                <a href="#" class="btn_liji"></a>

            </div>

        </div>

        <!-- video -->

        <div id="hotzhuan">

            <div class="container">

                <div class="zt_box">

                    <div class="zt_h1 pull-left">热门视频</div>

                    <div class="zt_more pull-right"><a href="{:url('home/index/video')}">更多></a></div>

                </div>



                <ul class="hotbox">

                    <volist name="videos" id="obj">

                        <li>

                            <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}&mark={$mark}">

                                <div class="zt_pic"><img src="{:upic($obj['pic'])}" width="100%"></div>

                                <div class="zt_title">{$obj.topic}</div>

                            </a>

                        </li>

                    </volist>

                </ul>

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

    <include file="mobile/index"></include>

</block>