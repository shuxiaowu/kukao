<extend name="common/common" />

<block name="main">

    <div>

        <!-- content -->

        <div id="content">

            <div class="container">

                <!--  -->

                <div class="mobile_slider hidden-lg">

                    <div class="swiper-container" id="myzhibo">

                        <div class="swiper-wrapper">

                            <div class="swiper-slide"><a href="{:url('home/index/yearTest',['type'=>0])}" <eq
                                    name="type" value="0">class="select"</eq>>全部</a></div>

                            <volist name="dataType" id="obj">

                                <div class="swiper-slide"><a href="{:url('home/index/yearTest',['type'=>$obj['Id']])}"
                                        <eq name="type" value="$obj['Id']">class="select"</eq>>{$obj.topic}</a></div>

                            </volist>



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

                            <a href="{:url('home/index/yearTest',['type'=>0])}" <eq name="type" value="0">class="type"

                                </eq>>全部</a>

                            <volist name="dataType" id="obj">

                                <a href="{:url('home/index/yearTest',['type'=>$obj['Id'],'years'=>$years])}" <eq
                                    name="type" value="$obj['Id']">class="type"

                                    </eq>>

                                    {$obj.topic}

                                </a>

                            </volist>

                        </div>

                    </div>

                    <div id="m_yead" class="yeartest_botton mobile_content">
                        <div class="yt_date">
                            <ul class="myead_ul">
                                <li <eq name="years" value="0">class="type"</eq>>
                                    <a href="{:url('home/index/yearTest',['type'=>$type,'years'=>0])}">不限</a>
                                </li>
                                <volist name="yearstype" id="obj">
                                    <li <eq name="years" value="$obj['Id']">class="type"</eq>>

                                        <a
                                            href="{:url('home/index/yearTest',['type'=>$type,'years'=>$obj['Id']])}">{$obj.topic}</a>

                                    </li>
                                </volist>

                            </ul>

                        </div>

                    </div>

                    <!--  -->

                   
                    <!--  -->

                    <div class="content_l_list m_list_sc">

                        <ul>

                            <volist name="data" id="obj">

                                <li>

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}"
                                        alt="{$obj.topic}">

                                        <div class="sc_text_topic list_layer1 oneline">{$obj.topic}</div>

                                        <div class="sc_text_intro list_layer2 twoline">{$obj.intro}

                                        </div>

                                    </a>

                                    <div class="time_hit visible-lg">

                                        <div class="sc_text_time pull-left">{$obj.date}</div>

                                        <div class="sc_text_hit pull-right">

                                            <p class="hit_pic"><img src="__img__/eye.png"></p>

                                            <p class="hit_num">{$obj.hit}</p>

                                        </div>

                                    </div>

                                    <div class="list_layer3 hidden-lg">

                                        <div class="pull-left">

                                           {$obj.date|subtext=0,11}

                                        </div>

                                        <div class="pull-right">

                                            <p><img src="__img__/eye.png"></p>

                                            <p>{$obj.hit}</p>

                                        </div>

                                    </div>

                                </li>

                            </volist>

                        </ul>

                    </div>
                    <div class="pages">
                        {$data->render()}
                    </div>


                    <!--  -->



                    <!--  -->

                </div>

                <include file="common/common_right">

            </div>

        </div>

    </div>

</block>