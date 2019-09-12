<extend name="common/common" />

<block name="title">

    <style>

        body {

            padding-top: 0 !important;

        }

    </style>

</block>

<block name="head">

    <!-- search -->

    <div class="visible-lg" style="height:225px;">

        <div id="fixed_box" class="fixed">

            <div id="pc_search">

                <div class="container">

                    <div class="pc_log pull-left">

                        <a href="#">

                            <img src="__img__/pc_logo.jpg">

                        </a>

                    </div>

                    <div class="search_input pull-left">

                        <div class="search_top">

                            <div class="sh_input_left">

                                <input type="text" placeholder="搜索你想知道的内容">

                            </div>

                            <div class="sh_button">

                                搜索

                            </div>

                        </div>

                        <div class="search_bottom">

                            <p>热门搜索：</p>

                            <p><a href="#">成绩查询入口</a></p>

                            <p><a href="#">成绩查询入口</a></p>

                            <p><a href="#">成绩查询入口</a></p>

                            <p><a href="#">成绩查询入口</a></p>

                        </div>

                    </div>

                    <div class="sh_zhixun pull-left">

                        <empty name="userphone">

                            <div class="video_login pull-right">

                                <a href="javascript:;" class="bounceInDown dialog demo0">登录</a>

                            </div>

                            <else />

                            <div class="video_login_box">

                                <div class="video_touxiang">

                                    <img src="__img__/userpic.png">

                                </div>

                                <div class="v_user_hover">

                                    <div class="v_user_head">

                                        <p><img src="__img__/userpic.png"></p>

                                        <p>{$userphone}</p>

                                    </div>

                                    <div class="exit_login">
                                        <p>退出当前账号</p>
                                    </div>
                                </div>
                            </div>
                        </empty>
                    </div>

                </div>

            </div>



            <div id="pc_nav" class="video_art_box">

                <div class="container">

                    <p class="vab_p">

                        当前位置：<a href="{:url('/')}">首页</a>><a href="{:url('home/index/video')}">视频课程</a>><a

                            href="javascript:;">{$data['topic']}</a>

                    </p>

                </div>

            </div>

        </div>

    </div>

</block>



<block name="main">
    <div class="hidden-lg" style="width:100%;height:48px;">
    </div>

    <!--  -->

    <div id="video_play_box">

        <div class="container">

            <div class="vpb_left">

                <div class="visible-lg" style="font-size:24px;color:#fff;padding:30px 0;">{$data['topic']}</div>

                <div class="video_bbox">

                    <div id="video"></div>

                </div>

                <div class="hidden-lg">

                    <div class="login_m_video bounceInDown dialog demo0">

                        登录账号，观看完整视频课程！

                    </div>

                    <div class="video_m_text">

                        <div class="vm_topic">

                                {$data['topic']}

                        </div>

                        <div class="vm_topichit">

                            <p class="tag">

                                {:gettopic('course',$data['course'])}

                            </p>

                            <p class="tag_hit">

                                {$data['hit']}人已试听

                            </p>

                        </div>



                    </div>

                </div>



                <div class="visible-lg" style="overflow:hidden;">

                    <div class="vpb_tag pull-left">

                        <p class="tag_title">课程标签</p>

                        <p class="tag_name">写作</p>

                        <p class="tag_name">MBA</p>

                    </div>

                    <div class="vpb_hit pull-right"> {$data['hit']}人已试听</div>

                </div>

            </div>

            <div class="vpb_right pull-left visible-lg">

                <ul class="vpb_list_ul">

                    <volist name="videolists" id="obj">

                            <li class="<eq name="id" value="$obj['Id']">active<else/>unactive</eq>">

                                <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}&mark=video">

                                    <div class="player_arrow">

                                        <img src="__img__/play_arrow.png">

                                    </div>

                                    <div class="player_pic">

                                        <img src="{:upic($obj['pic'])}">

                                    </div>

                                    <div class="play_text">

                                        <p class="twoline">{$obj.topic}</p>

                                    </div>

                                    <div class="play_jdt">

                                        试听

                                    </div>

                                </a>

                            </li>

                    </volist>

                </ul>

            </div>

        </div>

    </div>
    <script>
            var pic = '{:upic($data.pic)}';
            var islogin = {$indexuid};
            var vd_url = '{$vd_url}';
            var videoObject = {

                //playerID:'ckplayer01',//播放器ID，第一个字符不能是数字，用来在使用多个播放器时监听到的函数将在所有参数最后添加一个参数用来获取播放器的内容

                container: '#video', //容器的ID或className

                variable: 'player', //播放函数名称

                loaded: 'loadedHandler', //当播放器加载后执行的函数

                loop: false, //播放结束是否循环播放

                //autoplay: true, //是否自动播放

                //duration: 500, //设置视频总时间

                // cktrack: 'material/srt.srt', //字幕文件

                poster: pic, //封面图片

                config: '', //指定配置函数

                // mobileCkControls:true,//是否在移动端（包括ios）环境中显示控制栏

                live: false,//是否是直播视频，true=直播，false=点播

                video: [

                    [vd_url, 'video/mp4', '中文标清', 0]

                ]

            };

            var player = new ckplayer(videoObject);
           
    </script>

</block>

<block name="footjs">



</block>