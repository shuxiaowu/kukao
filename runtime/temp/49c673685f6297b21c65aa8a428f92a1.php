<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:59:"D:\phpStudy\WWW\bofang/app/ltadmin\view\website\datamod.tpl";i:1568095306;s:57:"D:\phpStudy\WWW\bofang\app\ltadmin\view\public\common.tpl";i:1568109664;s:55:"D:\phpStudy\WWW\bofang\app\ltadmin\view\public\meta.tpl";i:1520304810;s:57:"D:\phpStudy\WWW\bofang\app\ltadmin\view\public\footer.tpl";i:1567405428;s:54:"D:\phpStudy\WWW\bofang\app\ltadmin\view\public\pic.tpl";i:1502889310;s:57:"D:\phpStudy\WWW\bofang\app\ltadmin\view\public\editor.tpl";i:1521026952;}*/ ?>
<!DOCTYPE html>

<html>



<head>

   <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="<?php echo config('devcompany'); ?>后台管理系统 <?php echo config('admin_version'); ?>">
 <meta name="keywords" content="<?php echo config('devcompany'); ?>后台管理系统 <?php echo config('admin_version'); ?>">
 <meta name="author" content="jxbh.cn">
 <title><?php echo config('devcompany'); ?>后台管理系统</title>
 <link href="/bofang/public/ltadmin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/nifty.min.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/font-awesome.min.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/icon.min.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/alert.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/common.css" rel="stylesheet">
 <link href="/bofang/public/ltadmin/css/check.min.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/bofang/public/ltadmin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/bofang/public/ltadmin/css/comie.css">
 <![endif]-->
 <script src="/bofang/public/ltadmin/js/jquery.min.js" type="text/javascript"></script>
 <script src="/bofang/public/ltadmin/js/jquery.scorll.js" type="text/javascript"></script>
 <block name="meta"></block>

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

          <a href="<?php echo url('index/index'); ?>" class="navbar-brand">

            <!-- <img src="/bofang/public/ltadmin/images/logo/.png" alt="<?php echo config('devcompany'); ?>" class="brand-icon"> -->

            <div class="brand-title"><span class="brand-text"><?php echo config('devcompany'); ?></span></div>

          </a>

        </div>

        <div class="navbar-content clearfix">

          <ul class="nav navbar-top-links pull-left">

            <li class="tgl-menu-btn"><a class="mainnav-toggle" href="javascript:void(0)"><i class="pli-view-list"

                  style="color:#000;"></i></a></li>

            <?php if($admin_menu == 0): ?>

              <li class="dropdown">

                <a href="javascript:void(0)" data-toggle="dropdown" class="dropdown-toggle"><i class="pli-bell"></i>

                  <?php if($adminsetting['count'] > 0): ?><span class="badge badge-header badge-danger"></span><?php endif; ?>

                </a>

                <div class="dropdown-menu dropdown-menu-md">

                  <div class="pad-all bord-btm">

                    <p class="text-semibold text-main mar-no">消息提示</p>

                  </div>

                  <div class="nano scrollable">

                    <div class="nano-content">

                      <ul class="head-list">

                        <?php if($adminsetting['c_site'] == 1): ?>

                          <li>

                            <a class="media" href="<?php echo url('system/sysmod'); ?>">

                              <div class="media-left"><i class="pli-computer-secure icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">项目已关闭</div><small class="text-muted">项目已经关闭，点击设置开启项目。</small>

                              </div>

                            </a>

                          </li>

                        <?php endif; if($adminsetting['app_trace'] == 1): ?>

                          <li>

                            <a class="media" href="javascript:void(0)">

                              <div class="media-left"><i class="pli-speech-bubble-7 icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">您的网站程序处于开发状态</div><small class="text-muted">建议更改单入口文件的

                                  app_trace 参数。</small>

                              </div>

                            </a>

                          </li>

                        <?php endif; if($adminsetting['loginwarning'] != ''): ?>

                          <li>

                            <a class="media" href="<?php echo url('index/modpass'); ?>">

                              <div class="media-left"><i class="pli-add-user-plus-star icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">登录提示</div><small

                                  class="text-muted"><?php echo strip_tags($adminsetting['loginwarning']); ?></small>

                              </div>

                            </a>

                          </li>

                        <?php endif; if($adminsetting['passWarning'] != ''): ?>

                          <li>

                            <a class="media" href="<?php echo url('index/modpass'); ?>">

                              <div class="media-left"><i class="pli-add-user-plus-star icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">登录密码提示</div><small

                                  class="text-muted"><?php echo strip_tags($adminsetting['passWarning']); ?></small>

                              </div>

                            </a>

                          </li>

                        <?php endif; if($adminsetting['debug'] == 1): ?>

                          <li>

                            <a class="media" href="javascript:void(0)">

                              <div class="media-left"><i class="pli-layout-grid icon-2x"></i></div>

                              <div class="media-body">

                                <div class="text-nowrap">您的网站程序DEBUG已经启用</div><small class="text-muted">建议更改配置文件的

                                  app_debug 参数。</small>

                              </div>

                            </a>

                          </li>

                        <?php endif; ?>

                      </ul>

                    </div>

                  </div>

                </div>

              </li>

            <?php endif; if($adminback['isback'] == 1): ?>

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

                        <?php if(is_array($adminback['tablist']) || $adminback['tablist'] instanceof \think\Collection || $adminback['tablist'] instanceof \think\Paginator): $i = 0; $__LIST__ = $adminback['tablist'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tobj): $mod = ($i % 2 );++$i;?>

                          <tr>

                            <td>&nbsp;<?php echo $tobj; ?></td>

                            <td align="center"><span class="tab-state tabstate<?php echo $tobj; ?>" data-table="<?php echo $tobj; ?>"><i

                                  class="fa fa-spinner fa-spin" title="备份中..."></i></span></td>

                          </tr>

                        <?php endforeach; endif; else: echo "" ;endif; ?>

                      </table>

                    </div>

                  </div>

                  <div class="pad-all bord-top"><a href="<?php echo url('System/databackuplist'); ?>"

                      class="btn-link text-dark box-block"><i class="fa fa-angle-right fa-lg pull-right"></i>查看备份详情</a>

                  </div>

                </div>

              </li>

              <script type="text/javascript">

                window.isback = true;

                var datetime = '<?php echo date("Y年m月d日 H:i"); ?>';

                function tabstate() {

                  if (!isback) return false;

                  $.post('<?php echo url("Admin/tabstate"); ?>', {}, function (data) {

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

                  $.post('<?php echo url("Admin/backtables"); ?>', {}, function (data) {

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

            <?php endif; if($cmenu != '' and $admin_menu == 1): if(is_array($cmenu) || $cmenu instanceof \think\Collection || $cmenu instanceof \think\Paginator): $i = 0; $__LIST__ = $cmenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cobj): $mod = ($i % 2 );++$i;?>

                <li <?php if($topmenuid == $cobj['Id']): ?>class="menuselect"

            <?php endif; ?>><a href="javascript:void(0)" class="menu-uri" data-id="<?php echo $cobj['Id']; ?>"><?php echo $cobj['title']; ?></a></li>

            <?php endforeach; endif; else: echo "" ;endif; endif; if($admin_menu == 0): ?>

              <li><a href="javascript:void(0)" onClick="window.history.back();"><i class="pli-arrow-left"></i></a></li>

              <li><a href="javascript:void(0)" onClick="window.history.go(1)"><i class="pli-arrow-right"></i></a></li>

              <li><a href="javascript:void(0)" onClick="window.location.reload();"><i class="pli-repeat-2"></i></a></li>

            <?php endif; ?>

          </ul>

          <ul class="nav navbar-top-links pull-right">



            <li><a href="<?php echo url('index/cleancache'); ?>"><span class="pull-right"><i class="pli-recycling"

                    style="font-size:1.5em; line-height:40px;"></i></span>

                <div class="username hidden-xs">清除缓存</div>

              </a></li>

            <li id="dropdown-user" class="dropdown">

              <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">

                <span class="pull-right"><i class="pli-male ic-user"></i></span>

                <div class="username hidden-xs"><?php echo !empty($adminauth['adminuser'])?$adminauth['adminuser']:'--'; ?></div>

              </a>



              <div class="dropdown-menu dropdown-menu-xs dropdown-menu-right panel-default">

                <ul class="head-list">

                  <li class="bord-btm"><a href="<?php echo url('index/index'); ?>"><i class="pli-home icon-lg icon-fw"></i> 系统首页</a>

                  </li>

                  <li class="bord-btm"><a href="<?php echo url('index/modpass'); ?>"><i class="pli-gear icon-lg icon-fw"></i>

                      修改密码</a></li>

                  <li class="bord-btm"><a href="" target="_blank"><i class="pli-information icon-lg icon-fw"></i>

                      关于乐腾</a></li>

                  <!-- <li class="bord-btm"><a href="javascript:void(0)" class="lockscreen"><i class="pli-computer-secure icon-lg icon-fw"></i> 系统锁屏</a></li> -->

                </ul>

                <div class="pad-all text-right"><a href="<?php echo url('index/logout'); ?>" class="btn btn-primary"><i

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

            

  <div class="pubmain">

    <div class="panel-heading">

      <h3 class="panel-title">编辑资料</h3>

    </div>

    <div class="panel-body">

      <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">

        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle(); ?>">

          <tr>

            <td width="10%" height="32" align="right" valign="middle">资料名称：</td>

            <td height="32" align="left">

              <?php echo inputs(array('name'=>'topic','scene'=>'topic','val'=>$data['topic'],'tips'=>'资料标题（*必填）')); ?></td>

          </tr>
          <?php if($sty == 12): ?>
            <tr>
              <td height="32" align="right" valign="middle">选择年份：</td>

              <td height="32" align="left"><?php echo dropdown($dshow['years'],$data['years'],$years,'years'); ?></td>
            </tr>
          <?php endif; if($sty == 8): ?>

            <tr>

              <td width="10%" height="32" align="right" valign="middle">职位名称：</td>

              <td height="32" align="left">

                <?php echo inputs(array('name'=>'joptitle','place'=>'职位名称','val'=>$data['joptitle'])); ?></td>

            </tr>

          <?php endif; ?>

          <tr>

            <td height="32" align="right" valign="middle">资料所属：</td>

            <td height="32" align="left"><?php echo dropdown($dshow['mdata'],$data['inftype'],$inftopic); ?></td>

          </tr>

          <?php if($sty == '9'): ?>

            <tr>

              <td height="32" align="right" valign="middle">选择科目：</td>

              <td height="32" align="left"><?php echo dropdown($dshow['course'],$data['course'],$course,'course'); ?></td>

            </tr>
            <tr>
              <td height="32" align="right" valign="middle">会员剪辑视频链接：</td>
              <td height="32" align="left">
                <?php echo inputs(array('name'=>'advlinkurl','place'=>'会员剪辑视频链接','faicon'=>'link','val'=>$data['advlinkurl'],'tips'=>'注：请正确填写，没有http://的请加上http://')); ?>
              </td>
            </tr>
          <?php endif; ?>

          <tr>

            <td height="32" align="right" valign="middle">

              <?php if($sty == '9'): ?>视频链接：

                <?php else: ?>跳转链接：<?php endif; ?>

            </td>

            <td height="32" align="left">

              <?php echo inputs(array('name'=>'linkurl','place'=>'链接','val'=>$data['linkurl'],'faicon'=>'link','tips'=>'注：跳转链接请提填此项，没有请勿填写。')); ?>

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">作者/来源：</td>

            <td height="32" align="left">

              <?php echo inputs(array('name'=>'author','place'=>'资料作者','val'=>$data['author'],'width'=>'20','icon'=>'user','tips'=>'资料作者')); ?>

              <?php echo inputs(array('name'=>'source','place'=>'资料来源','val'=>$data['source'],'width'=>'20','icon'=>'globe','tips'=>'资料来源')); ?>

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">资料简介：</td>

            <td height="32" align="left">

              <?php echo inputs(array('name'=>'intro','val'=>$data['intro'],'type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！')); ?>

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">上传图片：</td>

            <td height="32" align="left">

              <?php echo uppic(array('pic'=>$data['pic'],'tips'=>'资料配图，尺寸'.picsize($sty))); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">资料内容：</td>

            <td height="32" align="left"><?php echo inputs(array('name'=>'content','val'=>$data['content'],'type'=>'editor')); ?>

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">TAG标签：</td>

            <td height="32" align="left"><?php echo inputs(array('scene'=>'tag','name'=>'tag','val'=>$data['tag'],'width'=>60)); ?>

            </td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面标题：</td>

            <td height="32" align="left"><?php echo inputs(array('name'=>'title','val'=>$data['title'],'scene'=>'title')); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面关键词：</td>

            <td height="32" align="left"><?php echo inputs(array('name'=>'keyword','val'=>$data['keyword'],'scene'=>'key')); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">页面描述：</td>

            <td height="32" align="left"><?php echo inputs(array('name'=>'metades','val'=>$data['metades'],'scene'=>'des')); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">是否置顶：</td>

            <td height="32" align="left"><?php echo checkbox($data['istop'],0,'istop'); ?> <span class="text-warning">

                注：勾选表示置顶</span></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">是否启用：</td>

            <td height="32" align="left"><?php echo checkbox($data['enabled']); ?> <span class="text-warning"> 注：勾选表示启用</span></td>

          </tr>

          <tr class="hide">

            <td height="32" align="right" valign="middle">资料排序：</td>

            <td height="32" align="left"><?php echo inputs(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord')); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">发布日期：</td>

            <td height="32" align="left">

              <?php echo inputs(array('name'=>'date','val'=>$data['date'],'scene'=>'date','width'=>'20','tips'=>'请按照 2017-01-01

              08:00:00 格式改写发布日期')); ?></td>

          </tr>

          <tr>

            <td height="32" align="right" valign="middle">&nbsp;</td>

            <input type="hidden" value="<?php echo $dshow['tables']; ?>" name="tables">

            <input type="hidden" value="<?php echo $dshow['martables']; ?>" name="martables">

            <input type="hidden" value="<?php echo $data['Id']; ?>" name="id">

            <td height="32" align="left">

              <?php echo btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary')); ?></td>

          </tr>

        </table>

      </form>

    </div>

  </div>



          </div>

        </div>

      </div>



      <nav id="mainnav-container">

        <div id="mainnav">

          <div id="mainnav-menu-wrap">

            <div class="nano">

              <div class="nano-content" style="margin:0; padding:0">

                <ul id="mainnav-menu" class="list-group" style="margin:0;">

                  <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cobj): $mod = ($i % 2 );++$i;if(in_array(($cobj['Id']), is_array($myauth)?$myauth:explode(',',$myauth))): ?>

                      <li class="list-header list-hide"

                        data-id="<?php echo $cobj['Id']; ?>" style="font-weight:normal; font-size:14px;

                        cursor:pointer;"><?php echo $cobj['title']; ?> <span class="pull-right badge badge-warning <?php if($num_index == $cobj['Id']): ?>hide<?php endif; ?>"

                          style="font-size:12px;background:none;"><i class="arrow"></i></span></li>

                      <?php if($cobj['menu'] != ''): if(is_array($cobj['menu']) || $cobj['menu'] instanceof \think\Collection || $cobj['menu'] instanceof \think\Paginator): $i = 0; $__LIST__ = $cobj['menu'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$mobj): $mod = ($i % 2 );++$i;if(in_array(($mobj['Id']), is_array($myauth)?$myauth:explode(',',$myauth))): ?>

                            <li class="levone lione<?php echo $mobj['Id']; ?> lio<?php echo $cobj['Id']; ?>"  data-isopen="<?php echo $mobj['isopen']; ?>" >

                              <!--active"-->

                              <a href="<?php echo tplUrl($mobj['linkurl']); ?>?index_id=<?php echo $cobj['Id']; ?>" >

                                <?php if($mobj['icon'] != ''): ?>

                                  <?php echo !empty($mobj['isext'])?faicon($mobj['icon'],'i'):icon($mobj['icon'],'i'); else: ?>

                                  <i class="pli-computer-secure"></i>

                                <?php endif; ?>

                                <span class="menu-title"><?php echo $mobj['title']; ?></span>
                                <!-- <i class="arrow"></i> -->

                              </a>

                              <?php if($mobj['smenu'] != ''): ?>

                                <ul class="collapse">

                                  <?php if(is_array($mobj['smenu']) || $mobj['smenu'] instanceof \think\Collection || $mobj['smenu'] instanceof \think\Paginator): $i = 0; $__LIST__ = $mobj['smenu'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sobj): $mod = ($i % 2 );++$i;if(in_array(($sobj['Id']), is_array($myauth)?$myauth:explode(',',$myauth))): ?>

                                      <li class="levtwo litwo<?php echo $sobj['Id']; ?>"><a

                                          href="<?php echo tplUrl($sobj['linkurl']); ?>"><?php echo $sobj['title']; ?></a></li>

                                    <?php endif; endforeach; endif; else: echo "" ;endif; ?>

                                </ul>

                              <?php endif; ?>

                            </li>

                          <?php endif; endforeach; endif; else: echo "" ;endif; endif; ?>

                      <li class="list-divider lid<?php echo $cobj['Id']; ?>"></li>

                    <?php endif; endforeach; endif; else: echo "" ;endif; ?>

                </ul>

                <script type="text/javascript">

                  var authid = <?php echo json_encode($authid); ?>;

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

                <?php if(!(empty($activeid) || (($activeid instanceof \think\Collection || $activeid instanceof \think\Paginator ) && $activeid->isEmpty()))): ?>

                  <script type="text/javascript">

                    var activeid = { $activeid };

                    $(".litwo" + activeid).addClass('active-link');

                    $(".litwo" + activeid).parent().parent().addClass('active-sub');

                    $(".litwo" + activeid).parent().parent().addClass('active');

                  </script>

                <?php endif; ?>



                <script type="text/javascript">

                  $(".list-hide").each(function (ieq, e) {

                    var id = <?php echo $num_index; ?>==0 ? $(this).data('id') : <?php echo $num_index; ?>;
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



    <?php if($adminsetting['debug'] == 0): ?>

      <footer id="footer">

        <div class="hide-fixed pull-right pad-rgt">Powered by thinkphp5.0</div>

        <p class="pad-lft">&#0169; <?php echo date('Y'); ?> <?php echo config('devcompany'); ?></p>

      </footer>

    <?php endif; ?>

    <button class="scroll-top btn"><i class="pci-chevron chevron-up"></i></button>

  </div>



  <script type="text/javascript">

    $(".lockscreen").click(function (e) {

      var $this = $(this);

      $this.html('<span class="fa fa-spinner fa-spin"></span> 锁屏中..');

      $.post('<?php echo url("Admin/lockscreen"); ?>', { 'act': 'lock' }, function (data) {

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

        $.post('<?php echo url("admin/switchtab"); ?>', { 'id': id }, function (data) {

          if (data.state == 1) {

            window.location.reload();

          } else {

            swal(data.msg, '', 'error');

          }

        }, 'json');

      }

    });



  </script>

    <?php if(!(empty($upload) || (($upload instanceof \think\Collection || $upload instanceof \think\Paginator ) && $upload->isEmpty()))): ?>
  <div class="modal fade bh-picture" id="bh-picture">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">系统图片库</h4>
          </div>
          <div class="modal-body" style="margin:0; padding:0;">
            <div class="row modal-picture">
              
              <div class="col-md-2 col-sm-3 col-xs-4 picture-sidebar">
                <div style="height:auto; overflow:hidden;">
                <div class="list-group">
                  <?php 
                   $filelist = model('File')->getfilepath();
                   if ( $filelist ) {
                     foreach( $filelist as $fkey=>$fval ) {
                       echo '<a href="javascript:void(0)" class="list-group-item picture-litype" data-path="'.$fval['file'].'">'.$fval['file'].' <span class="badge">'.$fval['count'].'</span></a>';
                     }
                   }
                   $piclist  = model('File')->getpic();
                   ?> 
                </div> 
                </div>
              </div>
              
              <div class="col-md-10 col-sm-9 col-xs-8 picture-main">
                <div style="height:auto; overflow:hidden;">
                <div class="picture-mblock">
                <?php 
                 if ( $piclist !='' && count($piclist['sdata']) > 0 ) {
                   foreach( $piclist['sdata'] as $pkey=>$pval ) {
                     echo ($pval['spic']!='') ? '<div class="picdiv picture-fname" data-path="'.$pval['spic'].'"><img src="'.ispic($pval['spic']).'" data-action="zooms"><p title="'.$pval['pic'].'">'.$pval['pic'].'</p><div class="pic-active"></div></div>' : '';
                   }
                 }
                 ?>
                </div>
                <div style=" height:10px; clear:both;"></div>
                <div class="picture-pagelist"><?php echo !empty($piclist['pagelist'])?$piclist['pagelist']:''; ?></div>
              </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="pull-left"><div class="up-progress" style="margin:10px auto;"><div class="up-bar"></div></div></div>
            <input type="hidden" value="" id="picture-file">
            <input type="hidden" value="" id="picture-path">
            <button type="button" class="btn btn-default btn-sm btn-rounded" data-dismiss="modal"><?php echo icon("off"); ?> 关闭</button>
            <button type="button" class="btn btn-primary btn-sm btn-rounded btn-choice-picture"><?php echo icon("picture"); ?> 选择图片</button>
          </div>
        </div>
      </div>
      <script src="/bofang/public/ltadmin/js/jqthumb.js" type="text/javascript"></script>
      <script>
	   $(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	   $('.picture-sidebar').perfectScrollbar();
	   $('.picture-main').perfectScrollbar();
      </script>
    </div>
 <?php endif; ?>
 <script src="/bofang/public/ltadmin/js/bootstrap.min.js"></script>
 <script src="/bofang/public/ltadmin/js/nifty.min.js"></script>
 <script src="/bofang/public/ltadmin/js/tags.min.js"></script>
 <script src="/bofang/public/ltadmin/js/alert.min.js"></script>
 <script src="/bofang/public/ltadmin/js/common.js"></script>
 <script src="/bofang/public/ltadmin/js/zoom.js"></script>
 <?php if(!(empty($upload) || (($upload instanceof \think\Collection || $upload instanceof \think\Paginator ) && $upload->isEmpty()))): ?>
 <link href="/bofang/public/ltadmin/css/cropper.css" rel="stylesheet">
 <script src="/bofang/public/ltadmin/uploadify/uploadify.js"></script>
 <script src="/bofang/public/ltadmin/js/jquery.form.js"></script>
 <script src="/bofang/public/ltadmin/js/cropper.min.js"></script>
 <?php endif; if(!(empty($color) || (($color instanceof \think\Collection || $color instanceof \think\Paginator ) && $color->isEmpty()))): ?>
 <script src="/bofang/public/ltadmin/js/color.js"></script>
 <link href="/bofang/public/ltadmin/css/color.css" rel="stylesheet">
 <script type="text/javascript">
  $(document).ready( function() {
	$('.colorselect').each( function() {
		$(this).minicolors({
			theme: 'bootstrap'
		});
	});
   });
 </script>
 <?php endif; ?>
 <script type="text/javascript">
  var img     = '/bofang/public/ltadmin/images';
  var abspath = '<?php echo $abspath; ?>/ltadmin';
  var upload  = '/bofang/public/ltadmin/uploadify';
  var upfile  = '/bofang/uploads/';
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({container : 'body'});
    $('[data-toggle="popover"]').popover({html:true,container:'html',trigger:'focus',title:'','placement':'right'});
  });
 </script>
 <?php if(!(empty($date) || (($date instanceof \think\Collection || $date instanceof \think\Paginator ) && $date->isEmpty()))): ?>
 <link href="/bofang/public/ltadmin/js/date/bootstrap-datepicker.css" rel="stylesheet">
 <script src="/bofang/public/ltadmin/js/date/bootstrap-datepicker.js"></script>
 <script>
   $(document).ready(function(e) {
    $('.input-date').datepicker({
        format: "yyyy-mm-dd",
        todayBtn: "linked",
		orientation: "auto",
        autoclose: true,
        todayHighlight: true
    }); 
	var dt = new Date();
	var df = dt.getHours()+':'+dt.getMinutes()+':'+dt.getSeconds();
    $('.input-time').datepicker({
        format: "yyyy-mm-dd "+df+"",
        todayBtn: "linked",
		orientation: "auto",
        autoclose: true,
        todayHighlight: true
    }); 
  });
 </script>
 <?php endif; if(!(empty($editor) || (($editor instanceof \think\Collection || $editor instanceof \think\Paginator ) && $editor->isEmpty()))): ?>
  
 <div class="modal fade" id="meituxiuxiumodal" tabindex="-1" role="dialog" data-backdrop="false" data-url="<?php echo url('Files/meituxiuxiu'); ?>?t=<?php echo time(); ?>">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:730px; height:640px;">
      <div class="modal-header">
        <button type="button" class="close btn-meitu-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">美图秀秀在线处理</h4>
      </div>
      <div class="modal-body">
        <input type="hidden" value="" id="meitupic">
        <iframe name="iframexiuxiu" class="iframexiuxiu" width="700" height="550" scrolling="no" frameborder="0" src="###"></iframe>
      </div>
    </div>
  </div>
 </div>
 
 <div class="modal fade" id="bhmapmodal" tabindex="-1" role="dialog" data-backdrop="false" data-url="<?php echo url('Files/bhmap'); ?>?t=<?php echo time(); ?>">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:730px; height:565px;">
      <div class="modal-header">
        <button type="button" class="close btn-bhmap-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">百度地图在线生成</h4>
      </div>
      <div class="modal-body">
        <input type="hidden" value="" id="bhmapuri">
        <input type="hidden" value="100%" id="bhmapwidth">
        <input type="hidden" value="500px" id="bhmapheight">
        <iframe name="iframexiuxiu" class="iframebhmap" width="700" height="475" scrolling="no" frameborder="0" src="###"></iframe>
      </div>
    </div>
  </div>
 </div>
 
 <div class="modal fade" id="bhtpl" tabindex="-1" role="dialog" data-backdrop="false">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:530px; height:565px;">
      <div class="modal-header">
        <button type="button" class="close btn-bhmap-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">百恒高级编辑器</h4>
      </div>
      <div class="modal-body" style="padding:0;">
        <div class="row modal-bhtpl">
          <div class="bhtpl-sidebar">
            <?php
             $tpltype = tpltype();
             if ( $tpltype !='' ) {
               foreach( $tpltype as $ttk=>$ttv ) {
                 $ttkactive = ($ttk==0) ? 'active' : '';
                 echo '<a href="javascript:void(0)" class="list-group-item bhtpl-type '.$ttkactive.'" data-id="'.$ttv['id'].'">'.$ttv['topic'].'</a>';
               }
             }
            ?>
          </div>
          <div class="bhtpl-main"><div class="tpl-block"></div></div>
        </div>
      </div>
    </div>
  </div>
 </div>
 
 <link rel="stylesheet" href="/bofang/public/kindedit/themes/default/default.css" />
 <link rel="stylesheet" href="/bofang/public/kindedit/plugins/code/prettify.css" />
 <script src="/bofang/public/kindedit/kindeditor.js"></script>
 <script src="/bofang/public/kindedit/lang/zh_CN.js"></script>
 <script src="/bofang/public/kindedit/plugins/code/prettify.js"></script>
 <script type="text/javascript">
    
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"],textarea[name="parameter"],textarea[name="parameter2"]', {
			cssPath          : '/bofang/public/kindedit/plugins/code/prettify.css',
			uploadJson       : '<?php echo url("Files/editorUpload"); ?>',
			fileManagerJson  : '/bofang/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
			  var self = this;
			  K.ctrl(document, 13, function() {
				self.sync();
				K('form[name=example]')[0].submit();
			  });
			  K.ctrl(self.edit.doc, 13, function() {
				self.sync();
				K('form[name=example]')[0].submit();
			  });
			}
		});
		prettyPrint();
		//编辑器模板
		$("body").on("click",".bhtpldiv",function(e){
		  var html = $(this).html();
		  if ( html == '' ) return false;
		  editor1.insertHtml(html+'<p>&nbsp;</p>');
		  $("#bhtpl").modal('hide');
		});
		$(".bhtpl-sidebar .bhtpl-type").click(function(e) {
          var id = $(this).data('id');
		  $('.bhtpl-type').removeClass('active');
		  $(this).addClass('active');
		  getTpl(id);
        });
		getTpl(1);
		function getTpl(id){
		  $.post('<?php echo url("files/bhtpl"); ?>',{'id':id},function(data){
		    if ( data.state == 1 ) {
			  $(".tpl-block").html(data.html);
			} else {
			  swal(data.msg,'','error');
			}
		  },'json');  
		}
	    $('#meituxiuxiumodal').on('hidden.bs.modal', function (e) {
		  var pic = $("#meitupic").val();
		  if ( pic !='' ) {
		    editor1.insertHtml('<img src="/bofang/public/kindedit/attached/image/'+pic+'" alt="">');
			$("#meitupic").val('');
		  }
		});
	    $('#bhmapmodal').on('hidden.bs.modal', function (e) {
		  var uri   = $("#bhmapuri").val();
		  var wid   = $("#bhmapwidth").val();
		  var hei   = $("#bhmapheight").val();
		  var url   = "<?php echo url('/home/map','',''); ?>";
		  var bhmap = '<iframe src="'+url+'?'+uri+'" name="mapifrm" width="'+wid+'" height="'+hei+'" frameborder="0" scrolling="no"></iframe>';
		  if ( uri !='' ) {
		    editor1.insertHtml(bhmap);
			$("#bhmapuri").val('');
			$("#bhmapwidth").val('100%');
			$("#bhmapheight").val('500px');
		  }
		});
	    $("body").on("click",".ke-ill-word",function(e){
	       var content = editor1.text();
		   var html    = editor1.html();
		   var $this   = $(this);
		   if ( $.trim(content) == '' ) { swal('请在编辑器里面输入资料内容','','error'); return false;}
		   $this.html('<span class="fa fa-spinner fa-spin"></span> 检测中..');
		   $.post('<?php echo url("Files/ckillegalword"); ?>',{'content':content},function(data){
		     $this.html('敏感词检测');
			 if ( data.state == 1 ) {
			   swal('敏感词检测',data.msg,'success');
			 } else if ( data.state == 2 ){
			   swal({
				 title : "敏感词检测",
				 text  : data.msg+'，点击确定按钮匹配掉敏感词。',
				 type  : "warning",
			  	 showCancelButton   : true,
			 	 confirmButtonColor : '#ef3535',
			 	 confirmButtonText  : '确定',
			 	 cancelButtonText   : "取消",
			 	 closeOnConfirm     : false,
			   },
			   function(){
				 $this.html('<span class="fa fa-spinner fa-spin"></span> 删除中..');  
				 $.post('<?php echo url("Files/illegalword"); ?>',{'content':html},function(data){
				   $this.html('敏感词检测');
				   if ( data.state == 1 ) {
				     swal('已将敏感词替换成**','','success');
					 editor1.html('');
					 editor1.appendHtml(data.html);
				   } else {
				     swal(data.msg,'','error');
				   }
				 },'json');
			   }); 
			 } else {
			   swal(data.msg,'','error');
			 }
		   },'json');
	    });  
	});
 </script>
 <?php endif; ?>


</body>



</html>