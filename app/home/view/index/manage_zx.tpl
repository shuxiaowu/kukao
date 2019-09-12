<extend name="common/common" />

<block name="main">

    <div class="visible-lg">

        <!-- content -->

        <div id="content">

            <div class="container">

                <div class="content_left">

                    <div class="manage_top">

                        <div class="phone-swiper">

                            <div class="swiper-container" id="manage_top">

                                <div class="swiper-wrapper">

                                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/mag1.jpg"

                                                width="100%" alt="" /></a></div>

                                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/mag1.jpg"

                                                width="100%" alt="" /></a></div>

                                </div>

                                <div class="swiper-pagination conpaginate"></div>

                            </div>

                        </div>

                        <script type="text/javascript">

                            new Swiper('#manage_top', { pagination: '#manage_top .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

                        </script>

                    </div>



                    <div class="content_l_list">

                        <ul>

                            <volist name="data" id="obj">

                                <li>

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}" alt="{$obj.topic}">

                                        <div class="sc_text_topic online">{$obj.topic}</div>

                                        <div class="sc_text_intro twoline">{$obj.intro}

                                        </div>

                                    </a>

                                    <div class="time_hit">

                                        <div class="sc_text_time pull-left">{$obj.date}</div>

                                        <div class="sc_text_hit pull-right">

                                            <p class="hit_pic"><img src="__img__/eye.png"></p>

                                            <p class="hit_num">{$obj['hit']}</p>

                                        </div>

                                    </div>

                            </volist>



                            </li>

                        </ul>

                    </div>

                    <div class="pages">

                        {$data->render()}

                    </div>

                </div>

                <include file="common/common_right">

            </div>

        </div>

    </div>

    <include file="mobile/managezx">

</block>