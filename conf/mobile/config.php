<?php
return [
   'view_replace_str' => [
	  '__css__'  => root().'/public/home/css',
	  '__js__'   => root().'/public/home/js',
	  '__img__'  => root().'/public/home/images',
      '__pic__'  => root().'/uploads/images/',
	  '__file__' => root().'/uploads/files/',
   ],
   'dispatch_success_tmpl' => dirname(THINK_PATH) . '/app/mobile/view/common/state.tpl',
   'dispatch_error_tmpl'   => dirname(THINK_PATH) . '/app/mobile/view/common/state.tpl',
];
