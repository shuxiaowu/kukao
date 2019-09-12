<extend name="common/common" />

<block name="main">

    <!-- content -->

    <div id="content">

        <div class="container">

            <div class="content_left">

                <div class="address_links">

                    <p>

                        当前位置：<a href="{:url('/')}">首页</a>><a href="">{$mark}</a>><a href="">{$title}</a>

                    </p>

                </div>

                <div class="yeartest_top">

                    <div class="yt_subject">

                        <a href="{:url('home/index/mbaMoreBtn',['sty'=>$sty,'mark'=>$mark,'type'=>0])}" <eq name="$type"

                            value="0">class="type"</eq>>全部</a>

                        <volist name="dataType" id="obj">

                            <a href="{:url('home/index/mbaMoreBtn',['sty'=>$sty,'mark'=>$mark,'type'=>$obj['Id']])}" <eq name="type"

                                value="$obj['Id']">class="type"</eq>>{$obj.topic}</a>

                        </volist>

                    </div>



                </div>

                <div class="content_l_list">

                    <ul>

                        <volist name="data" id="obj">

                            <li>

                                <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="" alt="">

                                    <div class="sc_text_topic">{$obj.topic}</div>

                                    <div class="sc_text_intro">{$obj.intro}

                                    </div>

                                </a>

                                <div class="time_hit">

                                    <div class="sc_text_time pull-left">{$obj.date}</div>

                                    <div class="sc_text_hit pull-right">

                                        <p class="hit_pic"><img src="__img__/eye.png"></p>

                                        <p class="hit_num">{$obj.hit}</p>

                                    </div>

                                </div>

                            </li>

                        </volist>

                    </ul>

                </div>

                <div class="pages">

                    {$data->render()}

                </div>

            </div>

            <include file="common/common_right">

        </div>

    </div>

</block>