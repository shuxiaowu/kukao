<extend name="common/common" />

<block name="title">

    <style>
        body {

            background: #efefef
        }
    </style>

</block>

<block name="main">

    <div class="visible-lg">

        <div id="banner">

            <div class="phone-swiper">

                <div class="swiper-container" id="mybanner">

                    <div class="swiper-wrapper">

                        <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/banner.jpg"
                                    width="100%" alt="" /></a></div>

                        <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/banner.jpg"
                                    width="100%" alt="" /></a></div>

                    </div>

                    <div class="swiper-pagination conpaginate"></div>

                </div>

            </div>

            <script type="text/javascript">

                new Swiper('#mybanner', { pagination: '#mybanner .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

            </script>

        </div>

        <div id="video_top_nav">

            <div class="container">

                <div class="vtn_item">

                    <div class="video_icon"><img src="__img__/video1.png"></div>

                    <div class="video_text">

                        <p class="video_p1">视频课程</p>

                        <p class="video_p2">登录后可免费试听所有课程</p>

                    </div>

                </div>

                <div class="vtn_item">

                    <div class="video_icon"><img src="__img__/video2.png"></div>

                    <div class="video_text">

                        <p class="video_p1">名师教学</p>

                        <p class="video_p2">登录后可免费试听所有课程</p>

                    </div>

                </div>

                <div class="vtn_item">

                    <div class="video_icon"><img src="__img__/video3.png"></div>

                    <div class="video_text">

                        <p class="video_p1">不定时更新</p>

                        <p class="video_p2">登录后可免费试听所有课程</p>

                    </div>

                </div>

            </div>

        </div>

        <!--  -->

        <div id="video_tuijian">

            <div class="container">

                <div class="vtj_head">

                    <div class="vtj_hd_left pull-left">推荐课程</div>

                    <div class="vtj_hd_right pull-right change_btn">
                        换一批
                    </div>

                </div>

                <div class="vtj_foot">

                    <ul>

                        <volist name="datafree" id="obj" offset="0" length="4">

                            <li>

                                <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}&mark={$mark}">

                                    <div class="vtj_ft_video">

                                        <img src="{:upic($obj['pic'])}">

                                    </div>

                                    <div class="vtj_ft_text twoline">

                                        <p class="oneline">{$obj.topic}</p>

                                    </div>

                                    <div class="vtj_ft_tag">

                                        <p class="v_tag1">{:gettopic('course',$obj['course'])}</p>
                                        <p class="v_tag2" style="padding-left:6px;">{$obj.hit}人试听</p>

                                    </div>

                                </a>

                            </li>

                        </volist>

                    </ul>

                </div>

            </div>

        </div>
        <script>

            var pages = 1;
            $('.change_btn').click(function () {
                var html = "";

                $.ajax({
                    type: 'post',
                    url: "{:url('home/index/changeVideo')}",
                    data: { 'page': pages },
                    datatype: 'json',
                    success: function (reg) {
                        if (reg.data.length > 0) {
                            $.each(reg.data, function (i, val) {

                                html += '<li>';
                                html += '<a href= "{:url('home / article / videoArt')}?Id=' + val['Id'] + '&mark={$mark}" >';
                                html += '<div class="vtj_ft_video"><img src="__pic__' + val['pic'] + '"></div>';
                                html += '<div class="vtj_ft_text twoline">';
                                html += '<p>' + val['topic'] + '</p>';
                                html += '</div>';
                                html += '<div class="vtj_ft_tag">';
                                html += '<p class="v_tag1">写作 </p>';
                                html += '<p class="v_tag2" style="padding-left:6px;">' + val['hit'] + '人试听</p>';
                                html += '</div>';
                                html += '</a>';
                                html += '</li >';

                            })
                            $('.vtj_foot>ul').html(html);
                           
                        } else {
                            pages = 1;
                            $.post("{:url('home/index/changeVideo')}", { 'page': pages }, function (reg) {
                                $.each(reg.data, function (i, val) {
                                    html += '<li>';
                                    html += '<a href= "{:url('home / article / videoArt')}?Id=' + val['Id'] + '&mark={$mark}" >';
                                    html += '<div class="vtj_ft_video"><img src="__pic__' + val['pic'] + '"></div>';
                                    html += '<div class="vtj_ft_text twoline">';
                                    html += '<p>' + val['topic'] + '</p>';
                                    html += '</div>';
                                    html += '<div class="vtj_ft_tag">';
                                    html += '<p class="v_tag1">写作 </p>';
                                    html += '<p class="v_tag2" style="padding-left:6px;">' + val['hit'] + '人试听</p>';
                                    html += '</div>';
                                    html += '</a>';
                                    html += '</li >';

                                })
                                $('.vtj_foot>ul').html(html);
                            }, 'json')

                        }
                        pages++;

                    }
                })
            })
        </script>
        <!--  -->

        <div id="kaoyan_h">

            <div class="container">

                <img src="__img__/kaoyan_h.jpg">

                <a href="#" class="btn_liji"></a>

            </div>

        </div>

        <!-- 免费——会员 -->

        <div id="free_vip">

            <div class="container">

                <div class="fv_head">

                    <div class="fv_head_left pull-left">

                        <a href="{:url('home/index/video',['freevip'=>10])}" <eq name="$freevip"
                            value="10">class="active"</eq>>免费试听</a>

                        <a <eq name="$isvip" value="1">href="{:url('home/index/video',['freevip'=>11])}"</eq> class="<eq
                                name="$freevip" value="11">active</eq>

                            <eq name="$isvip" value="0"> bounceInDown dialog demo0</eq>" >会员视频

                        </a>

                    </div>

                    <div class="fv_head_right pull-right">

                        <a href="{:url('home/index/video',['freevip'=>$freevip,'course'=>0])}" <eq name="course"
                            value="0">class="active"</eq>>全部</a>

                        <volist name="subtype" id="obj">

                            <a href="{:url('home/index/video',['freevip'=>$freevip,'course'=>$obj['Id']])}" <eq
                                name="course" value="$obj['Id']">class="active"</eq>>{$obj.topic}</a>

                        </volist>



                    </div>

                </div>

                <div class="fv_foot">

                    <ul>

                        <if condition='$freevip eq 10'>

                            <volist name="datavip" id="obj">

                                <li>

                                    <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}&mark={$mark}">

                                        <div class="vtj_ft_video">

                                            <img src="{:upic($obj['pic'])}">

                                        </div>

                                        <div class="vtj_ft_text twoline">

                                            <p class="oneline">{$obj.topic}</p>

                                        </div>

                                        <div class="vtj_ft_tag">

                                            <p class="v_tag1">{:gettopic('course',$obj['course'])}</p>

                                            <p class="v_tag2">{$obj.hit}人试听</p>

                                        </div>

                                    </a>

                                </li>

                            </volist>

                            <else />

                            <volist name="datavip" id="obj">

                                <li>

                                    <a href="<eq name=" $isvip"
                                        value="1">{:url('home/article/videoArt')}?Id={$obj['Id']}&mark={$mark}

                                        <else />javascript:;</eq>" >

                                        <div class="vtj_ft_video">

                                            <img src="{:upic($obj['pic'])}">

                                        </div>

                                        <div class="vtj_ft_text twoline">

                                            <p class="oneline">{$obj.topic}</p>

                                        </div>

                                        <div class="vtj_ft_tag">

                                            <p class="v_tag1">{:gettopic('course',$obj['course'])}</p>

                                            <p class="v_tag2">{$obj.hit}人试听</p>

                                        </div>

                                    </a>

                                </li>

                            </volist>

                        </if>

                    </ul>

                </div>

            </div>

        </div>

    </div>

    <include file="mobile/videofoot">

</block>