<div class="hidden-lg">

    <div id="mobile_banner">

        <div class="phone-swiper">

            <div class="swiper-container" id="myzhibo">

                <div class="swiper-wrapper">
                    <volist name="advindexpic" id="obj">
                        <div class="swiper-slide"><a href="javascript:void(0)"><img src="{:upic($obj['pic'])}"
                                    width="100%" alt="" /></a></div>
                    </volist>
                </div>

                <div class="swiper-pagination mbpaginate"></div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#myzhibo', { pagination: '#myzhibo .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

        </script>

    </div>

    <!-- mobile_list -->

    <div id="mobile_list" class="mobile_content">

        <ul>

            <li>

                <a href="{:url('home/index/mba')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon1.png">

                    </div>

                    <div class="m_text">

                        MBA

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/mpa')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon2.png">

                    </div>

                    <div class="m_text">

                        MPA

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/mpacc')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon3.png">

                    </div>

                    <div class="m_text">

                        MPACC

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/team')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon4.png">

                    </div>

                    <div class="m_text">

                        名师团队

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/video')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon5.png">

                    </div>

                    <div class="m_text">

                        视频课程

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/manageZx')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon6.png">

                    </div>

                    <div class="m_text">

                        管联资讯

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/yearTest')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon7.png">

                    </div>

                    <div class="m_text">

                        历年真题

                    </div>

                </a>

            </li>

            <li>

                <a href="{:url('home/index/applyCenter')}">

                    <div class="m_pic">

                        <img src="__img__/m_icon8.png">

                    </div>

                    <div class="m_text">

                        报名中心

                    </div>

                </a>

            </li>



        </ul>

    </div>

    <!-- mba -->

    <div class="mobile_content">

        <div class="container">

            <div class="m_mba_top">

                <div class="m_mba_tleft pull-left">

                    聚焦MBA

                </div>

                <div class="pull-right">

                    <a href="{:url('home/index/degree',['urlname'=>'mba'])}" class="m_mba_more">更多></a>

                </div>

            </div>

            <div class="m_mba_bottom">

                <p class="m_list_istop one_line">

                    <volist name="mbafocustop" id="obj" offset="0" length="1"> <a href="">{$obj.topic}</a>

                    </volist>

                </p>

                <ul class="m_list_ul">

                    <volist name="mbafocus" id="obj" offset="0" length="6">

                        <li class="one_line">

                            <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">{$obj['type']} |
                                {$obj.topic}</a>

                        </li>

                    </volist>

                </ul>

            </div>

            <div class="m_mba_bottom">

                <p class="m_list_istop one_line">

                    <volist name="mbafocustop" id="obj" offset="1" length="1"><a href="">{$obj.topic}</a>

                    </volist>

                </p>

                <ul class="m_list_ul">

                    <volist name="mbafocus" id="obj" offset="6" length="6">

                        <li class="one_line">

                            <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">{$obj['type']} |
                                {$obj.topic}</a>

                        </li>

                    </volist>

                </ul>

            </div>

        </div>

    </div>

    <!-- 资讯 -->

    <div id="m_information" class="mobile_content">

        <div class="container">

            <div class="m_infor_top">

                <p class="m_infor_p1">资讯</p>

                <p class="m_infor_p2">热点</p>

            </div>

            <div class="m_infor_nav">
                <volist name="mbainftype" id="obj" offset="0" length="4">
                    <div class="m_in_item">
                        {$obj.topic}

                    </div>
                </volist>
            </div>
            <div class="m_info_list">
                <volist name="mbainftype" id="obj">
                    <ul>
                        <volist name="obj['data']" id="vo">
                            <li class="one_line">

                                <a href="{:url('home/article/index',['Id'=>$obj['Id']])}">{$obj.topic} | {$vo.topic}</a>

                            </li>

                        </volist>
                    </ul>
                </volist>
            </div>

        </div>

    </div>
    <!--  -->
    <!-- <div id="m_index_mbox">
        <div class="container">
            <div class="mi_mtop">
                <div class="pull-left">MBA</div>
                <div class="pull-right"><a href="">更多></a></div>
            </div>
            <div class="mi_mdown">
                    <div class="phone-swiper">
                        <div class="swiper-container" id="mymba_phone">
                            <div class="swiper-wrapper">
                                <volist name="hottest" id="obj">
                                    <div class="swiper-slide"><a href="{:url('home/article/ztArticle',['Id'=>$obj['Id']])}">
                                        <div class="mi_mimg"><img src="{:upic($obj['pic'])}" width="100%" alt="" /></div>
                                        <div class="mi_topic oneline">{$obj.topic}</div></a>
                                    </div>
                                </volist>
                            </div>

                        </div>

                    </div>
                    <script type="text/javascript">

                        new Swiper('#mymba_phone', {spaceBetween : 20, pagination: '#mymba_phone .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true,slidesPerView : 2, });

                    </script>
                </div>
            </div>
        </div> -->
    
</div>