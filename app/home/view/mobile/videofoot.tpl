<div class="vtj_foot hidden-lg">

    <div class="container mobile_content">

        <div class="mobile_slider">

            <div class="swiper-container" id="myzhibo">

                <div class="swiper-wrapper">

                    <volist name="subtype" id="obj">

                        <div class="swiper-slide"><a

                                href="{:url('home/index/video',['vdtype'=>$vdtype,'course'=>$obj['Id']])}" <eq

                                name="course" value="$obj['Id']">class="select"</eq>>{$obj.topic}</a></div>

                    </volist>
                </div>

            </div>

        </div>

    </div>

    <script type="text/javascript">

        new Swiper('#myzhibo', { lazyLoading: true, autoplay: false, lazyLoading: true, slidesPerView: 4 });

    </script>

    <div>

        <ul>

            <volist name="phonefree" id="obj">

                <li>

                    <a href="{:url('home/article/videoArt')}?Id={$obj['Id']}&mark={$mark}">

                        <div class="vtj_ft_video">

                            <img src="{:upic($obj['pic'])}">

                        </div>

                        <div class="vtj_ft_text twoline">

                            {$obj.topic}

                        </div>

                        <div class="vtj_ft_tag">

                            <p class="v_tag1">{:gettopic('course',$obj['course'])}</p>

                            <p class="v_tag2">{$obj.hit}人试听</p>

                        </div>

                    </a>

                </li>

            </volist>

        </ul>

    </div>
    
  

    <div class="video_foot">

        <div class="vf_item">

            <a href="{:url('home/index/video',['vdtype'=>10,'icon'=>1])}">

                <p><img src="<eq name="icon" value="1">__img__/f1_h.png<else/>__img__/f1.png</eq>"></p>

                <p <eq name="icon" value="1">style="color:#0060ad;"</eq>>推荐课程</p>

            </a>

        </div>

        <div class="vf_item">

            <a href="{:url('home/index/video',['vdtype'=>10,'icon'=>2])}">

                <p><img src="<eq name="icon" value="2">__img__/f2_h.png<else/>__img__/f2.png</eq>"></p>

                <p <eq name="icon" value="2">style="color:#0060ad;"</eq>>免费试听</p>

            </a>

        </div>

        <div class="vf_item">

            <a href="{:url('home/index/video',['vdtype'=>11,'icon'=>3])}">

                <p><img src="<eq name="icon" value="3">__img__/f3_h.png<else/>__img__/f3.png</eq>"></p>

                <p <eq name="icon" value="3">style="color:#0060ad;"</eq>>会员观看</p>

            </a>

        </div>

    </div>

</div>
  <div class="pages hidden-lg">

        {$datafree->render()}

    </div>