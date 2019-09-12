<extend name="common/common" />

<block name="main">

    <div id="team_homepic">

        <img src="__img__/teampic.jpg" width="100%">

    </div>

    <div class="hidden-lg">

        <div class="container">

            <div class="mobile_slider">

                <div class="swiper-container" id="myzhibo">

                    <div class="swiper-wrapper">

                        <div class="swiper-slide"><a href="{:url('home/index/team',['type'=>0])}" <eq name="type" value="0"> class="select"</eq>>全部</a></div>

                        <volist name="dataType" id="obj">
                            <div class="swiper-slide"><a href="{:url('home/index/team',['type'=>$obj['Id']])}" <eq name="type" value="$obj['Id']"> class="select"</eq>>数学</a></div>
                        </volist>



                    </div>

                </div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#myzhibo', { lazyLoading: true, autoplay: 5000, lazyLoading: true, slidesPerView: 4 });

        </script>

        <div id="team_teacher">

            <div class="container">

                <ul class="tt_ul">
                    <volist name="data" id="obj">
                        <li>

                            <a href="javascript:;" title="" alt="">

                                <div class="tt_left">

                                    <img src="{:upic($obj['pic'])}">

                                </div>

                                <div class="tt_right">

                                    <p class="tt_name oneline">{$obj.topic}</p>

                                    <p class="tt_touxian">{$obj.joptitle}</p>

                                    <p class="tt_intro">
                                        {$obj.intro}
                                    </p>

                                </div>

                            </a>

                        </li>
                    </volist>
                </ul>

            </div>

        </div>

    </div>

    <div class="visible-lg">

        <volist name="dataType" id="obj">

            <!-- team_title -->

            <div id="team_title">

                <div class="container">

                    博方考研<span style="color:#0060ad">{$obj.topic}</span>辅导核心团队

                </div>

            </div>



            <!-- team_teacher1 -->

            <div id="team_teacher">

                <div class="container">

                    <ul class="tt_ul">

                        <volist name="obj['datatypes']" id="vo">

                            <li>

                                <a href="" title="" alt="">

                                    <div class="tt_left">

                                        <img src="{:npic($vo['pic'])}">

                                    </div>

                                    <div class="tt_right">

                                        <p class="tt_name">{$vo.topic}</p>

                                        <p class="tt_touxian">{$vo.joptitle}</p>

                                        <p class="tt_intro">{$vo.intro}

                                        </p>

                                    </div>

                                </a>

                            </li>

                        </volist>

                    </ul>

                </div>

            </div>

        </volist>



    </div>

    <div class="load_more hidden-lg">

        没有更多了

    </div>

</block>