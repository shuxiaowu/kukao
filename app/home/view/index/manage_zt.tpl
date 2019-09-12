<extend name="common/common" />

<block name="main">

    <div id="banner">

        <div class="phone-swiper hidden-lg">

            <div class="swiper-container" id="mybanner">

                <div class="swiper-wrapper">

                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/banner.jpg" width="100%"

                                alt="" /></a></div>

                    <div class="swiper-slide"><a href="javascript:void(0)"><img src="__img__/banner.jpg" width="100%"

                                alt="" /></a></div>

                </div>

                <div class="swiper-pagination conpaginate"></div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#mybanner', { pagination: '#mybanner .swiper-pagination', paginationClickable: true, lazyLoading: true, autoplay: 5000, lazyLoading: true });

        </script>

    </div>

    <!-- content -->

    <div id="content">

        <div class="container">

            <div class="mz_ttop visible-lg">

                <volist name="dataType" id="obj">

                        <a href="{:url('home/index/manageZt',['type'=>$obj['Id']])}" <eq name="type" value="$obj['Id']"> class="active"</eq>>{$obj.topic}</a>

                </volist>

               

            </div>

            <div class="mz_box_list">

                <ul>

                    <volist name="data" id="obj">

                        <li>

                            <a href="{:url('home/article/ztArticle',['Id'=>$obj['Id']])}" title="{$obj.topic}" alt="{$obj.topic}">

                                <div class="mzbl_pic">

                                    <img src="{:UPIC($obj['pic'])}" width="100%">

                                    <!-- <img src="__img__/plyer.png"

                                        style="width:30%;top:35%; position: absolute;left:35%;"> -->

                                </div>

                                <div class="mzbl_topic twoline">{$obj.topic}</div>

                            </a>

                        </li>

                    </volist>

                </ul>

                <div class="pages">

                    {$data->render()}

                </div>

            </div>



        </div>

    </div>

</block>