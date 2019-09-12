<div class="hidden-lg">

    <div id="mobile_banner">

        <div class="phone-swiper">

            <div class="swiper-container" id="mymba">

                <div class="swiper-wrapper">
                    <volist name="advtoppic" id="obj">
                        <div class="swiper-slide"><a href="javascript:void(0)"><img src="{:upic($obj['pic'])}" width="100%"

                                alt="" /></a></div>
                    </volist>
                </div>

                <div class="swiper-pagination mbpaginate"></div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#mymba', { pagination: '#mymba .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

        </script>

    </div>

    <!--  -->

    <div id="m_mba_nav" class="mobile_content">

        <div class="container">

            <div class="mmba_item">

                <a href="{:url('home/index/about',['Id'=>5])}">

                    <div class="mmba_item_img">

                        <img src="__img__/mba_img1.png" width="100%">

                    </div>

                    <div class="mmba_item_text">

                        招生简章

                    </div>

                </a>

            </div>

            <div class="mmba_item">

                <a href="{:url('home/index/video')}">

                    <div class="mmba_item_img">

                        <img src="__img__/mba_img2.png" width="100%">

                    </div>

                    <div class="mmba_item_text">

                        推荐课程

                    </div>

                </a>

            </div>

            <div class="mmba_item">

                <a href="{:url('home/index/yearTest')}">

                    <div class="mmba_item_img">

                        <img src="__img__/mba_img3.png" width="100%">

                    </div>

                    <div class="mmba_item_text">

                        历年真题

                    </div>

                </a>

            </div>

            <div class="mmba_item">

                <a href="{:url('home/index/about',['Id'=>4])}">

                    <div class="mmba_item_img">

                        <img src="__img__/mba_img4.png" width="100%">

                    </div>

                    <div class="mmba_item_text">

                        报考指南

                    </div>

                </a>

            </div>

        </div>

    </div>

    <!-- mba -->

    <div class="mobile_content">

        <div class="container">

            <div class="m_mba_top">

                <div class="m_mba_tleft pull-left">

                    实时资讯

                </div>

            </div>

            <div class="m_mba_bottom">

                <p class="m_list_istop one_line">

                <volist name="datafocustop" id="obj" offset="0" length="1"> <a href="">{$obj.topic}</a></volist>

                </p>

                <ul class="m_list_ul">
                <volist name="datafocus" id="obj" offset="0" length="4">
                    <li class="one_line">

                        <a href="{:url('home/article/index',['Id'=>$obj['Id'],'mark'=>$mark])}" title="" alt="">{$obj['type']} | {$obj.topic}</a>

                    </li>
                </volist>
                </ul>

            </div>

            <div class="m_mba_bottom">
            <volist name="datafocustop" id="obj" offset="1" length="1">
                <p class="m_list_istop one_line">

                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}">{$obj.topic}</a>

                </p>
            </volist>

                <ul class="m_list_ul">
            <volist name="datafocus" id="obj" offset="4" length="4">
                    <li class="one_line">

                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">{$obj['type']} | {$obj.topic}</a>

                    </li>
            </volist>                
                </ul>

            </div>

        </div>

    </div>

    <!-- school_msg -->

    <div id="school_msg">

        <div class="container">

            <div class="msg_top">
 <volist name="datainftype" id="obj">
                <div class="m_item <eq name="type" value="$obj['Id']">active</eq>">

                    <a href="{:url('home/index/'.$mark,['urlname'=>$urlname,'type'=>$obj['Id']])}"> {$obj.topic}</a>

                </div>
</volist>

            </div>

        </div>

    </div>

    <div class="m_list_sc">

        <div class="container">

            <ul>
                <volist name="data" id="obj">
                    <li>

                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}">

                            <div class="list_layer1 oneline">{$obj.topic}</div>

                            <div class="list_layer2 twoline">{$obj.intro}</div>

                            <div class="list_layer3">

                                <div class="pull-left">

                                    {$obj.date | subtext=0,11}

                                </div>

                                <div class="pull-right">

                                    <p><img src="__img__/eye.png"></p>

                                    <p>{$obj.hit}</p>

                                </div>

                            </div>

                        </a>

                    </li>
                </volist>
            </ul>

        </div>



    </div>

    <div class="load_more">

        <!-- 没有更多了 -->

    </div>

</div>