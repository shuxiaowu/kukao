<?php
return [
    'app_debug'        => true,                                                       // 应用调试模式
    'app_trace'        => true,                                                       // 应用Trace
    'default_filter'   => 'addslashes,htmlspecialchars,trim',                          // 默认全局过滤方法 用逗号分隔多个
    'default_module'   => 'home',                                                      // 默认模块名
    'pathinfo_depr'    => '/',                                                         // pathinfo分隔符
    'url_html_suffix'  => 'html',                                                      // URL伪静态后缀
	'auto_bind_module' => false,                                                       // 入口自动绑定模块
    // 'exception_tmpl'   => dirname(THINK_PATH).'/app/home/view/common/error.tpl',       // 异常页面的模板文件
	'template'         => ['view_suffix'=>'tpl','taglib_begin'=>'<','taglib_end'=>'>'],
	'upload_path'      => './uploads/',
	'illegalword_on'   => true,                                                        //是否开启敏感词匹配 vendor\topthink\think-illegalword
	'notbacktable'     => 'online',                                                    //不需要备份的数据表 多个用 , 隔开
	'backuptime'       => 3,                                                           //自动备份时间 单位天
	'url_route_on'     => true,                                                        //是否开启路由
];