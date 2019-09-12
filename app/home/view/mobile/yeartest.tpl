<div class="hidden-lg">

    <div class="container">

        <div class="mobile_slider">

            <div class="swiper-container" id="myzhibo">

                <div class="swiper-wrapper">

                    <div class="swiper-slide"><a href="{:url('home/index/yeatTest',['type'=>0])}" <eq name="type"
                            value="0">class="select"</eq>>全部</a></div>

                    <volist name="dataType" id="obj">

                        <div class="swiper-slide"><a href="{:url('home/index/yeatTest',['type'=>$obj['Id']])}" <eq
                                name="type" value="$obj['Id']">class="select"</eq>>{$obj.topic}</a></div>

                    </volist>



                </div>

            </div>

        </div>

    </div>

    <script type="text/javascript">

        new Swiper('#myzhibo', { lazyLoading: true, autoplay: 5000, lazyLoading: true, slidesPerView: 4 });

    </script>

    <div id="m_yead" class="mobile_content">

        <div class="container">

            <ul class="myead_ul">
                <volist name="yearstype" id="obj">
                    <li <eq name="years" value="$obj['Id']">class="type"</eq>>
                        <a href="{:url('home/index/yearTest',['type'=>$type,'years'=>$obj['Id']])}">
                            {$obj.topic}
                        </a>
                    </li>
                </volist>
            </ul>

        </div>

    </div>

    <div class="m_list_sc">

        <div class="container">

            <ul>

                <li>

                    <a>

                        <div class="list_layer1">2020考研南昌大学研究生考试综管类大纲原文</div>

                        <div class="list_layer2">武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教...</div>

                        <div class="list_layer3">

                            <div class="pull-left">

                                2018-08-01

                            </div>

                            <div class="pull-right">

                                <p><img src="__img__/eye.png"></p>

                                <p>125</p>

                            </div>

                        </div>

                    </a>

                </li>

                <li>

                    <a>

                        <div class="list_layer1">2020考研南昌大学研究生考试综管类大纲原文</div>

                        <div class="list_layer2">武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教...</div>

                        <div class="list_layer3">

                            <div class="pull-left">

                                2018-08-01

                            </div>

                            <div class="pull-right">

                                <p><img src="__img__/eye.png"></p>

                                <p>125</p>

                            </div>

                        </div>

                    </a>

                </li>

                <li>

                    <a>

                        <div class="list_layer1">2020考研南昌大学研究生考试综管类大纲原文</div>

                        <div class="list_layer2">武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教...</div>

                        <div class="list_layer3">

                            <div class="pull-left">

                                2018-08-01

                            </div>

                            <div class="pull-right">

                                <p><img src="__img__/eye.png"></p>

                                <p>125</p>

                            </div>

                        </div>

                    </a>

                </li>

                <li>

                    <a>

                        <div class="list_layer1">2020考研南昌大学研究生考试综管类大纲原文</div>

                        <div class="list_layer2">武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教...</div>

                        <div class="list_layer3">

                            <div class="pull-left">

                                2018-08-01

                            </div>

                            <div class="pull-right">

                                <p><img src="__img__/eye.png"></p>

                                <p>125</p>

                            </div>

                        </div>

                    </a>

                </li>

            </ul>

        </div>



    </div>

    <div class="pages">



    </div>

</div>