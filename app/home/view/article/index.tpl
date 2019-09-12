<extend name="common/common" />

<block name="title">

    <link rel="stylesheet" href="__css__/share.css" />

</block>

<block name="main">

    <!-- mobile hidden-lg-->

    <div class="mobile_art hidden-lg mobile_content">

        <div class="container">

            <div class="pull-left">{$data.date|subtext=0,11}</div>

            <div class="pull-right">

                <p><img src="__img__/eye.png" class="eye"></p>

                <p>{$data.hit}</p>

            </div>

        </div>

    </div>

    <!-- content -->

    <div id="content">

        <div class="container">

            <div class="content_left">

                <div class="address_links visible-lg">

                    <p>

                        当前位置：<a href="{:url('/')}">首页</a>><notempty name="mark"><a href="{:url('home/index/degree',['urlname'=>$mark])}">{$mark}</a>></notempty> <a href="">{$title}</a>

                    </p>

                </div>

                <div class="content_article">

                    <div class="content_head visible-lg">

                        <div class="art_title"

                            style="font-size:28px;color:#000;text-align:center;margin-top:40px;margin-bottom:35px;">

                            {$data.topic}</div>

                        <div class="art_intro">

                            <div class="art_left pull-left">来源：{$sysconf.companyname} | {$data.date|subtext=0,11}</div>

                            <div class="pull-right">
                                <div class="share-dialog">

                                    <div class="share-close"></div>
                                    <div class="share-platform">

                                        <div class="share-platform-r">

                                            <div class="share-dialog-title">分享到:</div>

                                            <div class="bdsharebuttonbox">

                                                <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>

                                                <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>

                                                <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>

                                                <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                            <script>window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "分享到新浪微博", "bdMini": "1", "bdMiniList": ["bdxc", "tqf", "douban", "bdhome", "sqq", "thx", "ibaidu", "meilishuo", "mogujie", "diandian", "huaban", "duitang", "hx", "fx", "youdao", "sdo", "qingbiji", "people", "xinhua", "mail", "isohu", "yaolan", "wealink", "ty", "iguba", "fbook", "twi", "linkedin", "h163", "evernotecn", "copy", "print"], "bdPic": "", "bdStyle": "1", "bdSize": "32" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>

                            <script src="__js__/ZeroClipboard.js"></script>

                            <script>

                                var g_url = window.location.href;

                                $('.share-copy-c input').val(g_url);

                                var clip = new ZeroClipboard(document.getElementById("btnCopy"));

                            </script>

                        </div>

                    </div>

                    <!-- 内容 -->



                    <div class="content_con">

                            {$data.content}

                        <!-- <p>

                            <img src="__img__/art.jpg" width="100%">

                        </p> -->

                    </div>

                    <div class="up_down">

                        <div class="up_con pull-left">

                            <span>上一篇：</span>

                            <eq name="tops" value="0"><a href="javascript:;">无</a><else/> <a href="{:url('home/article/index',['Id'=>$top['Id']])}" title="{$top['topic']}" alt="{$top['topic']}">{$top['topic']}</a></eq>

                           

                        </div>

                        <div class="down_con pull-right">

                            <span>下一篇：</span>

                            <eq name="nexts" value="0"><a href="javascript:;">无</a><else/> <a href="{:url('home/article/index',['Id'=>$next['Id']])}" title="{$next['topic']}" alt="{$next['topic']}">{$next['topic']}</a></eq>

                            

                        </div>

                    </div>

                </div>

            </div>

            <div class="visible-lg">

                <include file="common/common_right">

            </div>

        </div>

    </div>

</block>