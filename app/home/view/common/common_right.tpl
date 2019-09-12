<div class="content_right visible-lg">

    <div class="content_top">

        资讯新闻

    </div>

    <div class="content_r_list">

        <ul>

            <volist name="glinfor" id="obj">

                <li>

                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title=" {$obj.topic}" alt=" {$obj.topic}">

                        <p class="point">

                            <img src="__img__/point.jpg">

                        </p>

                        <p class="conten_t_topic">

                            {$obj.topic}

                        </p>

                    </a>

                </li>

            </volist>

        </ul>

    </div>

    <div class="hotschool_box1">

        <div class="hotb1_ttop">

            <p class="hotb1_ttp1"><img src="__img__/sch_icon.png"></p>

            <p class="hotb1_ttp2">江西热门院校</p>

        </div>

        <div class="hotb1_list">

            <ul>

                <volist name="hotschools" id="obj">

                    <li><a>{$obj.topic}</a></li>

                </volist>

            </ul>

        </div>

    </div>

    <neq name="mark" value="applyCenter">

        <div class="content_ke">

            <div class="ck_top">课程推荐</div>

            <volist name="tjvideo" id="obj">

                <div class="videob1">

                    <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}">

                        <div class="video1">

                            <img src="{:upic($obj['pic'])}">

                        </div>

                        <div class="video1_intro">

                            {$obj.topic}

                        </div>

                    </a>

                    <div class="video1_listen">

                        <p class="vl1_left">{:gettopic('course',$obj['course'])}</p>

                        <p class="vl1_right">{$obj['hit']}人试听</p>

                    </div>

                </div>

            </volist>

        </div>

    </neq>

</div>