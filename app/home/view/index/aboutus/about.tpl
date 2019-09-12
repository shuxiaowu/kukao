<extend name="common/common" />

<block name="title">

    <style>
        body {

            background: #f2f2f2
        }
    </style>

</block>

<block name="main">



    <div class="hidden-lg ab_m_list  mobile_content">

        <div class="mobileab_slider">

            <div class="swiper-container" id="myzhibo">

                <div class="swiper-wrapper">
                    <volist name="abouttype" id="obj">
                        <div class="swiper-slide">
                            <a href="{:url('home/index/about',['sty'=>1,'Id'=>$obj['Id']])}"<eq name="Id" value="$obj['Id']">class="select"</eq>>{$obj.topic}</a>
                        </div>
                    </volist>
                    <div class="swiper-slide">
                        <a href="{:url('home/index/about',['sty'=>4])}" <eq name="typename"
                            value="webmap">class="select"</eq>>网站地图</a>
                        </div>
                </div>

            </div>

        </div>

        <script type="text/javascript">

            new Swiper('#myzhibo', { lazyLoading: true, autoplay: false, lazyLoading: true, slidesPerView: 4 });

        </script>

    </div>

    <div id="aboutus">

        <!-- mobile hidden-lg -->

        <div class="container">

            <div class="ab_left visible-lg">

                <ul>
                    <volist name="abouttype" id="obj">
                        <li <eq name="Id" value="$obj['Id']">class="active"</eq>>
                            <a href="{:url('home/index/about',['sty'=>1,'Id'=>$obj['Id']])}" <eq
                                    name="typename" value="contact">class="select"</eq>>{$obj.topic}</a>
                        </li>
                    </volist>
                    <li <eq name="typename" value="webmap">class="active"</eq>>

                        <a href="{:url('home/index/about',['sty'=>4,'Id'=>0])}">网站地图</a>

                    </li>


                </ul>

                <div class="ab_code">

                    <div class="ab_code_text">扫码关注微信公众号</div>

                    <div class="ab_code_one">

                        <img src="__pic__{$sysconf['weixinpic']}" width="100%">

                    </div>

                    <div class="ab_code_text">扫码关注微信群号</div>

                    <div class="ab_code_one">

                        <img src="__pic__{$sysconf['wxqpic']}" width="100%">

                    </div>

                </div>

            </div>

            <div class="ab_right">

                <div class="ab_r_h1 visible-lg">

                    {$topname}

                </div>

                <switch name="sty">

                    <case value="1">
                        {$data.content}
                        <!-- <div class="ab_content_article">



                            <p>

                                <img src="__img__/ab1.jpg" width="100%">

                            </p>

                            <p style="font-size:18px; color:#323232;line-height:30px;margin-top:50px;">

                                博方教育 • 江西专硕在线网创立于2010年；隶属于北京大成卓立教育科技有限公司，是国内前沿的在职研究生领域综合性门户网站。

                            </p>

                            <p style="font-size:18px; color:#323232;line-height:30px;margin-top:50px;">

                                博方教育 •

                                江西专硕在线网是全国在职研究生网上报名服务平台，既是各在职研究生招生单位的宣传咨询平台，主要及时提供全国各大院校在职硕士（同等学力申硕、在职专业硕士）、在职博士、高级研修、中外合作办学等高端教育项目的招生动态，为求学者免费提供及时、准确、全面的教育资讯信息，以及为求学者提供快捷的网上在线咨询服务，为广大学员搭建一个与全国各招生单位进行交流的桥梁。

                            </p>

                            <p style="font-size:18px; color:#323232;line-height:30px;margin-top:50px; ">

                                博方教育 • 江西专硕在线网贯穿在职研究生招生宣传、招生咨询、考试提醒、在校报名、生源调剂、开课通知等整个工作流程，实现了在职研究生服务一体化。



                                为学员提供专业的报前咨询服务，为学员分析适合的学校与专业，为各个在职研究生招生单位提供精准有效的广告投放服务。

                            </p>

                            <p style="font-size:18px; text-align:right;margin-top:50px; ">

                                　　（来源：博方教育 • 江西专硕在线网）

                            </p>



                        </div> -->

                    </case>

                    <!-- 联系方式 -->

                 
                    <case value="4">

                        <p style="font-size: 20px;color:#0060ad;margin:60px 0 20px 0; ">网站导航</p>

                        <p style="line-height:55px;overflow: hidden;">

                            <a href="" class="address_alink">MBA</a>

                            <a href="" class="address_alink">MPA</a>

                            <a href="" class="address_alink">MPACC</a>

                            <a href="" class="address_alink">MEM</a>

                            <a href="" class="address_alink">MTA</a>

                            <a href="" class="address_alink">MAUD</a>

                            <a href="" class="address_alink">MLIS</a>

                            <a href="" class="address_alink">视频课程</a>

                            <a href="" class="address_alink">管联资讯</a>

                            <a href="" class="address_alink">历年真题</a>

                            <a href="" class="address_alink">管联专题</a>

                            <a href="" class="address_alink">关于我们</a>

                            <a href="" class="address_alink">报名中心</a>

                        </p>

                        <p style="font-size: 20px;color:#0060ad;margin:60px 0 20px 0; ">专业硕士</p>

                        <p style="line-height:55px;overflow: hidden;">

                            <a href="" class="address_alink">招生院校</a>

                            <a href="" class="address_alink">招生简章</a>

                            <a href="" class="address_alink">报考指南</a>

                            <a href="" class="address_alink">考研复试</a>

                            <a href="" class="address_alink">考研调剂</a>

                            <a href="" class="address_alink">新闻资讯</a>

                            <a href="" class="address_alink">招生动态</a>

                            <a href="" class="address_alink">教务公告</a>

                            <a href="" class="address_alink">政策法规</a>

                            <a href="" class="address_alink">活动信息</a>

                            <a href="" class="address_alink">成绩查询</a>

                            <a href="" class="address_alink">分数线</a>

                        </p>

                        <p style="font-size: 20px;color:#0060ad;margin:60px 0 20px 0; ">复试</p>

                        <p style="line-height:55px;overflow: hidden;">

                            <a href="" class="address_alink">复试指导</a>

                            <a href="" class="address_alink">复试试题</a>

                            <a href="" class="address_alink">提前面试</a>

                            <a href="" class="address_alink">复试通知</a>

                        </p>

                        <p style="font-size: 20px;color:#0060ad;margin:60px 0 20px 0; ">调剂</p>

                        <p style="line-height:55px;overflow: hidden;">

                            <a href="" class="address_alink">调剂指导</a>

                            <a href="" class="address_alink">调剂信息</a>
                        </p>
                    </case>
                </switch>



            </div>

        </div>

    </div>

</block>