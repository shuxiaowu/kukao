<?php
namespace app\mobile\controller;

use think\Controller;
use think\Db;
use think\Request;

class Home extends Controller{
	protected $req;  
	protected $conf;
	protected function _initialize(){
		if(!ismobile()){
			config('default_module','home');$this->redirect('home/index/index');
	}else{
		config('default_module','mobile');
	}
		$this->req = Request::instance();
		$this->assign('think',$this->req->baseFile());
		if ( !$conf = cache('sysconfig') ) {
			$conf = Db::name('systemconfig')->field('metatitle,metades,metakey,companyname,address,email,tel,mobile,icpnote,c_site,c_text,sys_code,shieldip,iptips,isonline,qq,isqq,weibourl,weixinpic')->where('Id',1)->find();
			if ( $conf ) cache('sysconfig',$conf);
		}
		if ( $conf ) {
			if ( $conf['c_site'] ) {
				header('Content-Type: text/html;charset=utf-8');
				echo ($conf['c_text']!='') ? ('<h1 style="text-align:center;line-height:380px;color:#666;">'.$conf['c_text'].'</h1>') : ('<h1 style="text-align:center;line-height:380px;color:#666;">项目维护中，请稍后..</h1>');
				die;
			}
			$aboutnav=DB::name('aboutus')->field('Id,topic')->where(array('enabled'=>1,'sty'=>1))->limit(5)->order('ord ASC,Id DESC')->select();
			$newsnav=DB::name('inftype')->field('Id,topic')->where(array('enabled'=>1,'sty'=>1))->limit(5)->order('ord ASC,Id DESC')->select();
			$pronav=DB::name('proctag')->field('Id,topic')->where(array('enabled'=>1,'sty'=>1))->limit(5)->order('ord ASC,Id DESC')->select();
			$this->assign('pronav',$pronav);
			$this->assign('aboutnav',$aboutnav);
			$this->assign('newsnav',$newsnav);
			$this->conf = $conf;
			$this->assign('title','');
			$this->assign('metatitle',$conf['metatitle']);
			$this->assign('metakey',$conf['metakey']);
			$this->assign('metades',$conf['metades']);
			$this->assign('sysconf',$conf);
		} else {
			exit('<h1 style="text-align:center;line-height:250px;color:#666;">NO SYSTEM DATA</h1>');
		}
	}
	

}
