<div class="hidden-lg">

    <!--  -->

    <div id="mobile_banner">

        <div class="phone-swiper">

            <div class="swiper-container" id="myzhibo">

                <div class="swiper-wrapper">

                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/mbanner.jpg" width="100%"

                                alt="" /></a></div>

                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/mbanner.jpg" width="100%"

                                alt="" /></a></div>

                </div>

                <div class="swiper-pagination mbpaginate"></div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#myzhibo', { pagination: '#myzhibo .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

        </script>

    </div>

    <!--  -->

    <div class="m_list_sc">

        <div class="container">

            <ul>
                <volist name="data" id="obj">
                <li>

                    <a href="{:url('home/article/index',['Id'=>$obj['Id']])}" title="{$obj.topic}" alt="{$obj.topic}">

                        <div class="list_layer1 online">{$obj.topic}</div>

                        <div class="list_layer2 twoline">{$obj.intro}</div>

                        <div class="list_layer3">

                            <div class="pull-left">

                                    {$obj.date|subtext=0,11}

                            </div>

                            <div class="pull-right">

                                <p><img src="__img__/eye.png"></p>

                                <p>{$obj['hit']}</p>

                            </div>

                        </div>

                    </a>

                </li>
                </volist>
            </ul>

        </div>



    </div>

  <div class="pages">
      {$data->render()}
  </div>
</div>