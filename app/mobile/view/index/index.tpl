<extend name="common/common" />
<block name="main">
    <div class="hui-wrap">
        <div>
            <div class="hui-swipe" id="swipe">
                <div class="hui-swipe-items">
                    <volist name="indexbanner"  id="obj">
                        <div class="hui-swipe-item"><img src="{:UPIC($obj['pic'])}"/></div>
                    </volist>                
                </div>
            </div>
        </div>

    </div>
    <script src="__js__/mobile/hui-swipe.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        var swipe = new huiSwpie('#swipe');
        swipe.autoPlay = false;
        swipe.run();
        swipe.loop = true;
        swipe.autoPlay  = true;
    </script>
    <div class="hui-center-title">
        <h1>公司简介</h1>
    </div>
    <div class="line"></div>
    <div class="hui-content" style="padding:10px;">
        <a href="{:url('Index/about')}"><img src="{:upic($aboutindex['pic'])}" /></a>
        <a href="{:url('Index/about')}"><p><span style="font-weight:700;">南昌西尔戴尔医疗科技有限公司</span>（简称“西尔戴尔”）
            成立于2014年，总部位于南昌经济技术开发区龙潭路188号公司依托高校优势进行高新科技项目自主研发和生产转化，拥有多名硕士、博士、教授等组成的研发团队，同时拥有遍布全国的营销服务队伍。</p></a>
        <a href=""><p>公司首研的宫颈细胞学玻片扫描影像分析系统（CTD-1000）及配套产品已于2018年7月全面获得CFDA注册认证该产品为降低病理医师的劳动强度、减少漏误诊、提高宫颈癌筛查的精确性提供了保障，填补了国内细胞学智能图像分析的空白。公司将以维护大众健康为己任，以提升我国医疗技术为研发方向，逐步形成产、销、研为一体的现代企业。</p></a>
    </div>
    <div class="hui-center-title">
        <h1>产品中心</h1>
    </div>
    <div style="padding:10px;">
        <div class="hui-swipe" id="product1">
            <div class="hui-swipe-items">
                <volist name="Clinical" id="obj">
                    <div class="hui-swipe-item"><a href="{:url('Index/productarticle','Id='.$obj['Id'])}"><img src="{:upic($obj['pic'])}"/></a></div>
                </volist>
            </div>
        </div>       
    </div>
    <div style="padding:10px;">
        <div class="hui-swipe" id="product2">
            <div class="hui-swipe-items">
               <volist name="diagnostic" id="obj">
                <div class="hui-swipe-item"><a href="{:url('Index/productarticle','Id='.$obj['Id'])}"><img src="{:upic($obj['pic'])}"/></a></div>
            </volist>
        </div>
    </div>

</div>
<div class="hui-button hui-button-large" style="margin-top:15px;"><a href="{:url('Index/product')}" style="display:block;">查看更多</a></div>
<script type="text/javascript">
    var swipe1 = new huiSwpie('#product1');
    swipe1.autoPlay = false;
    swipe1.run();
    swipe1.loop = true;
    swipe1.autoPlay  = true;
    var swipe2 = new huiSwpie('#product2');
    swipe2.autoPlay = false;
    swipe2.run();
    swipe2.loop = true;
    swipe2.autoPlay  = true;
</script>
<div class="hui-center-title">
    <h1>新闻中心</h1>
</div>
<div class="hui-media-list" style="padding:10px;">
    <ul>
        <volist name="newsindex" id="obj">
            <li style="height:70px;">
                <a href="{:url('Index/newsarticle','Id='.$obj['Id'])};">
                    <div class="hui-media-list-img">
                        <div class="day">{$obj.date|subtext=9,2}</div>
                        <div class="year-m">{$obj.date|subtext=0,7}</div>
                    </div>
                    <div class="hui-media-content newsli">
                        <h1>{$obj.topic}</h1>
                        <p style="">{$obj.intro}</p>
                    </div>
                </a>
            </li>
        </volist>
    </ul>
    <div class="hui-button hui-button-large" style="margin-top:15px;"><a href="{:url('Index/newsinfo')}" style="display:block;">查看更多</a></div>
</div>
<div class="hui-wrap">
   <div class="down-left" style="padding:15px 10px;background:#eee;">
    <p>公司地址：{$sysconf.address}</p>
    <p>公司电话：{$sysconf.tel}/{$sysconf.mobile}</p>
    <p>公司邮箱：{$sysconf.email}</p>
    <p>CopyRight © {$sysconf.companyname}， 技术支持：<a style="color:#b5b7bb" href="http://www.jxbh.cn" target="_blank">百恒网络</a></p>
</div>
</div>
</block>