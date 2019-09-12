<extend name="common/common" />
<block name="title">
    <style>
        body {
            background: #f2f2f2
        }
    </style>
</block>
<block name="main">

    <div id="aboutus">
        <div class="container">
            <div class="ab_left">
                <ul>
                    <li <eq name="typename" value="about">class="active"</eq> >
                        <a href="{:url('home/index/about',['sty'=>1])}">关于我们</a>
                    </li>
                    <li <eq name="typename" value="contact">class="active"</eq>>
                        <a href="{:url('home/index/about',['sty'=>2])}">联系方式</a>
                    </li>
                    <li <eq name="typename" value="links">class="active"</eq>>
                        <a href="{:url('home/index/about',['sty'=>3])}">友情链接</a>
                    </li>
                    <li <eq name="typename" value="webMap">class="active"</eq>>
                        <a href="{:url('home/index/about',['sty'=>4])}">网站地图</a>
                    </li>
                    <li <eq name="typename" value="lawApply">class="active"</eq>>
                        <a href="{:url('home/index/about',['sty'=>5])}">法律申明</a>
                    </li>
                </ul>
                <div class="ab_code">
                    <div class="ab_code_text">扫码关注微信公众号</div>
                    <div class="ab_code_one">
                        <img src="__img__/code1.jpg" width="100%">
                    </div>
                    <div class="ab_code_text">扫码关注微信群号</div>
                    <div class="ab_code_one">
                        <img src="__img__/code1.jpg" width="100%">
                    </div>
                </div>
            </div>
            <div class="ab_right">
                <div class="ab_r_h1">
                    关于我们
                </div>
                <div class="ab_content_article">
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

                </div>
            </div>
        </div>
    </div>
</block>