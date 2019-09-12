<extend name="common/common" />

<block name="main">

    <!-- Search -->

    <div class="conter_box visible-lg">

        <div class="ny_zb">

            <div class="ny_zbbt">

                <span>Search</span>

                <p>搜索</p>

            </div>

            <div class="ny_zblb1">

                <ul class="clearfix">

                    <li>

                        <a href="javascript:void(0)" class="cur">搜索</a>

                    </li>

                    <div style="clear:both;"></div>

                </ul>

            </div>

        </div>

        <div class="conter_r">

            <div class="cont_tit">

                <h2 class="cont_title">搜索</h2>

                <p class="cont_posi"><a href="/">主页</a> &gt; <a class="curpos">搜索</a></p>

                <div style="clear:both;"></div>

            </div>

            <div class="cont_news_list">

                <empty name='result'>

                    没找到关于&nbsp;&nbsp;"<font color=red>{$keyword}</font>"&nbsp;&nbsp;的文章

                    <else />

                    <ul>

                        <volist name="result" id="obj">

                            <li>

                                <div class="pubdate">

                                    <span class="date">{$obj.date|substr=9,2}</span>

                                    <span class="y_month">{$obj.date|substr=0,7}</span>

                                </div>

                                <div class="newsmess">

                                    <if condition="$obj['sty'] eq 1">

                                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title=""

                                            class="news_title">{$obj.topic}</a></if>

                                    <if condition="$obj['sty'] eq 2">

                                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title=""

                                            class="news_title">{$obj.topic}</a></if>

                                    <if condition="$obj['sty'] eq 3">

                                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}"

                                            title="" class="news_title">{$obj.topic}</a></if>

                                    <if condition="$obj['sty'] eq 4">

                                        <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title=""

                                            class="news_title">{$obj.topic}</a></if>

                                    <p class="news_desc">{$obj.intro}</p>

                                </div>

                                <div style="clear:both;"></div>

                            </li>

                        </volist>

                        <div style="clear:both;"></div>

                    </ul>

                </empty>

            </div>

        </div>



    </div>

    <div class="pages visible-lg">

        {$pageshow}

    </div>

    <!-- phone -->

    <div class="phonebox hidden-lg">

        <div class="container">

            <empty name='result'>

                <div style="text-align:center;font-size:14px;color:#666; ">没找到关于&nbsp;&nbsp;"<font color=red>{$keyword}

                    </font>"&nbsp;&nbsp;的文章</div>

                <else />

                <ul>

                    <volist name="result" id="obj">

                        <li style="padding:10px 0">

                            <div class="pubdate">

                                <span class="date">{$obj.date|substr=8,2}</span>

                                <span class="y_month">{$obj.date|substr=0,7}</span>

                            </div>

                            <div class="newsmess" style="float:left;width: 80%;">

                                <if condition="$obj['sty'] eq 1">

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}"

                                        title="" class="news_title">{$obj.topic}</a>

                                </if>

                                <if condition="$obj['sty'] eq 2">

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}"

                                        title="" class="news_title">{$obj.topic}</a>

                                </if>

                                <if condition="$obj['sty'] eq 3">

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}"

                                        title="" class="news_title">{$obj.topic}</a>

                                </if>

                                <if condition="$obj['sty'] eq 4">

                                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}"

                                        title="" class="news_title">{$obj.topic}</a>

                                </if>

                                <p class="news_desc twoline">{$obj.intro}</p>

                            </div>

                            <div style="clear:both;"></div>

                        </li>

                    </volist>

                    <div style="clear:both;"></div>

                </ul>

            </empty>

        </div>

        <div class="pages hidden-lg">

            {$pageshow}

        </div>

    </div>

</block>