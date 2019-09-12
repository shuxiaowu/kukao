<!DOCTYPE html>

<html>



<head>

  <include file="public/meta" />

</head>

<style>
   .levone{display:none;}
</style>

<body>

  <div class="alert alert-success alert-system"

    style="margin:0;position: fixed;top: 0;z-index: 9999;width: 100%;display: none;"><span></span></div>

  <div id="container" class="effect aside-float aside-bright mainnav-lg">

    <header id="navbar" style="position:fixed;">

      <div id="navbar-container" class="boxed">

        <div class="navbar-header">

          <a href="{:url('index/index')}" class="navbar-brand">

            <!-- <img src="__img__/logo/.png" alt="{:config('devcompany')}" class="brand-icon"> -->

            <div class="brand-title"><span class="brand-text">{:config('devcompany')}</span></div>

          </a>

        </div>

        <div class="navbar-content clearfix">

          <ul class="nav navbar-top-links pull-left">

            <li class="tgl-menu-btn"><a class="mainnav-toggle" href="javascript:void(0)"><i class="pli-view-list"

                  style="color:#000;"></i></a></li>

            <if condition="$admin_menu eq 0">

              <li class="dropdown">

                <a href="javascript:void(0)" data-toggle="dropdown" class="dropdown-toggle"><i class="pli-bell"></i>

                  <if condition="$adminsetting['count'] gt 0"><span class="badge badge-header badge-danger"></span></if>

                </a>

                <div class="dropdown-menu dropdown-menu-md">

                  <div class="pad-all bord-btm">

                    <p class="text-semibold text-main mar-no">消息提示</p>

                  </div>

                  <div class="nano scrollable">

                    <div class="nano-content">

                      <ul class="head-list">

                        <if condition="$adminsetting['c_site'] eq 1">

                          <li>

                            <a class="media" href="{:url('system/sysmod')}">

                              <div class="media-left"><i class="pli-computer-secure icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">项目已关闭</div><small class="text-muted">项目已经关闭，点击设置开启项目。</small>

                              </div>

                            </a>

                          </li>

                        </if>



                        <if condition="$adminsetting['app_trace'] eq 1">

                          <li>

                            <a class="media" href="javascript:void(0)">

                              <div class="media-left"><i class="pli-speech-bubble-7 icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">您的网站程序处于开发状态</div><small class="text-muted">建议更改单入口文件的

                                  app_trace 参数。</small>

                              </div>

                            </a>

                          </li>

                        </if>





                        <if condition="$adminsetting['loginwarning'] neq ''">

                          <li>

                            <a class="media" href="{:url('index/modpass')}">

                              <div class="media-left"><i class="pli-add-user-plus-star icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">登录提示</div><small

                                  class="text-muted">{:strip_tags($adminsetting['loginwarning'])}</small>

                              </div>

                            </a>

                          </li>

                        </if>

                        <if condition="$adminsetting['passWarning'] neq ''">

                          <li>

                            <a class="media" href="{:url('index/modpass')}">

                              <div class="media-left"><i class="pli-add-user-plus-star icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">登录密码提示</div><small

                                  class="text-muted">{:strip_tags($adminsetting['passWarning'])}</small>

                              </div>

                            </a>

                          </li>

                        </if>

                        <if condition="$adminsetting['debug'] eq 1">

                          <li>

                            <a class="media" href="javascript:void(0)">

                              <div class="media-left"><i class="pli-layout-grid icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">您的网站程序DEBUG已经启用</div><small class="text-muted">建议更改配置文件的

                                  app_debug 参数。</small>

                              </div>

                            </a>

                          </li>

                        </if>

                      </ul>

                    </div>

                  </div>

                </div>

              </li>

            </if>

            <if condition="$adminback['isback'] eq 1">

              <li class="dropdown backupli"><a href="javascript:void(0)" data-toggle="dropdown"

                  class="dropdown-toggle"><i class="pli-data-settings"></i><span

                    class="badge badge-header badge-danger"></span></a>

                <div class="dropdown-menu dropdown-menu-md">

                  <div class="pad-all bord-btm">

                    <p class="text-semibold text-main mar-no">数据库自动备份中</p>

                  </div>

                  <div class="nano scrollable" style="height:150px;">

                    <div class="nano-content admin-tabdiv">

                      <table class="table table-hover" width="100%" style="margin:0px auto;">

                        <tr class="active">

                          <td style=" border:none;">&nbsp;数据库</td>

                          <td width="100" align="center" style=" border:none;">备份状态</td>

                        </tr>

                        <volist name="adminback['tablist']" id="tobj">

                          <tr>

                            <td>&nbsp;{$tobj}</td>

                            <td align="center"><span class="tab-state tabstate{$tobj}" data-table="{$tobj}"><i

                                  class="fa fa-spinner fa-spin" title="备份中..."></i></span></td>

                          </tr>

                        </volist>

                      </table>

                    </div>

                  </div>

                  <div class="pad-all bord-top"><a href="{:url('System/databackuplist')}"

                      class="btn-link text-dark box-block"><i class="fa fa-angle-right fa-lg pull-right"></i>查看备份详情</a>

                  </div>

                </div>

              </li>

              <script type="text/javascript">

                window.isback = true;

                var datetime = '{:date("Y年m月d日 H:i")}';

                function tabstate() {

                  if (!isback) return false;

                  $.post('{:url("Admin/tabstate")}', {}, function (data) {

                    if (data.state == 1) {

                      if (data.tabdata.length > 0) {

                        for (var i in data.tabdata) {

                          $(".tabstate" + data.tabdata[i]).html('<font color="green"><b>√</b></font>');

                        }

                        if ($(".tab-state").length == data.tabdata.length) return false;

                      }

                      setTimeout(function () { tabstate(); }, 50);

                    }

                  }, 'json');

                }

                setTimeout(function () {

                  if (!isback) return false;

                  tabstate();

                  $.post('{:url("Admin/backtables")}', {}, function (data) {

                    if (data.state == 1) {

                      window.isback = false;

                      $(".backupli span.badge").hide();

                      $(".alert-system").show(100);

                      $(".alert-system span").html('数据自动备份成功~备份时间：' + datetime);

                      setTimeout(function () {

                        $(".alert-system,.backupli").hide(100);

                      }, 2500);

                    } else {

                      swal(data.msg, '', 'error');

                    }

                  });

                }, 1000);



              </script>

            </if>

            <if condition="$cmenu neq '' and $admin_menu eq 1">

              <volist name="cmenu" id="cobj">

                <li <if condition="$topmenuid eq $cobj['Id']">class="menuselect"

            </if>><a href="javascript:void(0)" class="menu-uri" data-id="{$cobj['Id']}">{$cobj['title']}</a></li>

            </volist>

            </if>

            <if condition="$admin_menu eq 0">

              <li><a href="javascript:void(0)" onClick="window.history.back();"><i class="pli-arrow-left"></i></a></li>

              <li><a href="javascript:void(0)" onClick="window.history.go(1)"><i class="pli-arrow-right"></i></a></li>

              <li><a href="javascript:void(0)" onClick="window.location.reload();"><i class="pli-repeat-2"></i></a></li>

            </if>

          </ul>

          <ul class="nav navbar-top-links pull-right">



            <li><a href="{:url('index/cleancache')}"><span class="pull-right"><i class="pli-recycling"

                    style="font-size:1.5em; line-height:40px;"></i></span>

                <div class="username hidden-xs">清除缓存</div>

              </a></li>

            <li id="dropdown-user" class="dropdown">

              <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">

                <span class="pull-right"><i class="pli-male ic-user"></i></span>

                <div class="username hidden-xs">{$adminauth['adminuser']?:'--'}</div>

              </a>



              <div class="dropdown-menu dropdown-menu-xs dropdown-menu-right panel-default">

                <ul class="head-list">

                  <li class="bord-btm"><a href="{:url('index/index')}"><i class="pli-home icon-lg icon-fw"></i> 系统首页</a>

                  </li>

                  <li class="bord-btm"><a href="{:url('index/modpass')}"><i class="pli-gear icon-lg icon-fw"></i>

                      修改密码</a></li>

                  <li class="bord-btm"><a href="" target="_blank"><i class="pli-information icon-lg icon-fw"></i>

                      关于乐腾</a></li>

                  <!-- <li class="bord-btm"><a href="javascript:void(0)" class="lockscreen"><i class="pli-computer-secure icon-lg icon-fw"></i> 系统锁屏</a></li> -->

                </ul>

                <div class="pad-all text-right"><a href="{:url('index/logout')}" class="btn btn-primary"><i

                      class="pli-unlock"></i> 退出</a></div>

              </div>

            </li>

          </ul>

        </div>



      </div>

    </header>



    <div class="boxed">



      <div id="content-container">

        <div id="page-content">

          <div class="panel" style="padding:0; overflow:auto; ">

            <block name="main"></block>

          </div>

        </div>

      </div>



      <nav id="mainnav-container">

        <div id="mainnav">

          <div id="mainnav-menu-wrap">

            <div class="nano">

              <div class="nano-content" style="margin:0; padding:0">

                <ul id="mainnav-menu" class="list-group" style="margin:0;">

                  <volist name="menu" id="cobj">

                    <in name="cobj['Id']" value="$myauth">

                      <li class="list-header list-hide"

                        data-id="{$cobj['Id']}" style="font-weight:normal; font-size:14px;

                        cursor:pointer;">{$cobj['title']} <span class="pull-right badge badge-warning <eq name="$num_index" value="$cobj['Id']">hide</eq>"

                          style="font-size:12px;background:none;"><i class="arrow"></i></span></li>

                      <if condition="$cobj['menu'] neq ''">

                        <volist name="cobj['menu']" id="mobj">

                          <in name="mobj['Id']" value="$myauth">

                            <li class="levone lione{$mobj['Id']} lio{$cobj['Id']}"  data-isopen="{$mobj['isopen']}" >

                              <!--active"-->

                              <a href="{:tplUrl($mobj['linkurl'])}?index_id={$cobj['Id']}" >

                                <if condition="$mobj['icon'] neq ''">

                                  {$mobj['isext']?faicon($mobj['icon'],'i'):icon($mobj['icon'],'i')}

                                  <else />

                                  <i class="pli-computer-secure"></i>

                                </if>

                                <span class="menu-title">{$mobj['title']}</span>
                                <!-- <i class="arrow"></i> -->

                              </a>

                              <if condition="$mobj['smenu'] neq ''">

                                <ul class="collapse">

                                  <volist name="mobj['smenu']" id="sobj">

                                    <in name="sobj['Id']" value="$myauth">

                                      <li class="levtwo litwo{$sobj['Id']}"><a

                                          href="{:tplUrl($sobj['linkurl'])}">{$sobj['title']}</a></li>

                                    </in>

                                  </volist>

                                </ul>

                              </if>

                            </li>

                          </in>

                        </volist>

                      </if>

                      <li class="list-divider lid{$cobj['Id']}"></li>

                    </in>

                  </volist>

                </ul>

                <script type="text/javascript">

                  var authid = {:json_encode($authid) };

                  // if (authid['level'] == 2) {

                  //   var id = authid['id'];

                  //   $(".lione" + id).addClass('active-link');

                  // } else if (authid['level'] == 3) {

                  //   var id = authid['id'];

                  //   $(".litwo" + id).addClass('active-link');

                  //   $(".litwo" + id).parent().parent().addClass('active-sub');

                  //   $(".litwo" + id).parent().parent().addClass('active');

                  // }

                  $(".levone").each(function (index, element) {

                    var isopen = $(".levone").eq(index).data("isopen");

                    if (isopen == 1 && $(this).find("ul").length > 0) {

                      $(this).addClass("active");

                    }

                  });

                </script>

                <notempty name="activeid">

                  <script type="text/javascript">

                    var activeid = { $activeid };

                    $(".litwo" + activeid).addClass('active-link');

                    $(".litwo" + activeid).parent().parent().addClass('active-sub');

                    $(".litwo" + activeid).parent().parent().addClass('active');

                  </script>

                </notempty>



                <script type="text/javascript">

                  $(".list-hide").each(function (ieq, e) {

                    var id = {$num_index}==0 ? $(this).data('id') : {$num_index};
                    // var id = $(this).data('id');

                    if ($(".lio" + id + " .active-link").length > 0) return false;

                    if ($(".lio" + id + "").hasClass('active-link')) return false;
                    
                    if ($(this).find("span.badge").hasClass('hide')) {
                      // $(this).find("span.badge").removeClass('hide');
                      $(this).find('.levone').removeClass('active-link');

                      $(".lio" + id).show();

                      // $(".lid" + id).show();
                    }
                  });

                  $(".list-hide").click(function (e) {

                    var id = $(this).data('id');

                    if ($(this).find("span.badge").hasClass('hide')) {

                      $(this).find("span.badge").removeClass('hide');

                      $(".lio" + id).hide();

                      $(".lid" + id).hide();

                    } else {

                      $(this).find("span.badge").addClass('hide');

                      $(".lio" + id).show();

                      $(".lid" + id).show();

                    }

                  });

                </script>



              </div>

            </div>

          </div>



        </div>

      </nav>



    </div>



    <if condition="$adminsetting['debug'] eq 0">

      <footer id="footer">

        <div class="hide-fixed pull-right pad-rgt">Powered by thinkphp5.0</div>

        <p class="pad-lft">&#0169; {:date('Y')} {:config('devcompany')}</p>

      </footer>

    </if>

    <button class="scroll-top btn"><i class="pci-chevron chevron-up"></i></button>

  </div>



  <script type="text/javascript">

    $(".lockscreen").click(function (e) {

      var $this = $(this);

      $this.html('<span class="fa fa-spinner fa-spin"></span> 锁屏中..');

      $.post('{:url("Admin/lockscreen")}', { 'act': 'lock' }, function (data) {

        $this.html('<span class="fa fa-lock"></span> 锁屏');

        if (data == 1) {

          window.location.reload();

        } else {

          swal(data, '', 'error');

        }

      }, 'json');

    });



    $(".levone").click(function (e) {

      if ($(this).find("ul li").length == 0) {

        window.location.href = $(this).find("a").attr("href");

      }

    });



    $(".menu-uri").click(function (e) {

      var id = $(this).data('id');

      if (id) {

        $.post('{:url("admin/switchtab")}', { 'id': id }, function (data) {

          if (data.state == 1) {

            window.location.reload();

          } else {

            swal(data.msg, '', 'error');

          }

        }, 'json');

      }

    });



  </script>

  <include file="public/footer" />

</body>



</html>