<?php
/**
 * Created by Visual Studio Code.
 * User: Administrator
 * Date: 2018/12/26
 * Time: 10:51
 */ 
namespace app\home\controller;

use think\Controller;
use think\Db;
use think\Request;

class Home extends Controller{
  
  protected $req;  
  protected $conf;
  protected $userphone;
  protected function _initialize(){
	$this->req = Request::instance();
	// if(ismobile()&&$this->req->controller()!='Map'){
	// 		config('default_module','mobile');$this->redirect('mobile/index/index');
	// }else{
	// 	config('default_module','home');
	// }
	$this->userphone = cookie('?phone') ? cookie('phone') :0;
	if(cookie('phone')){
		$userphone = substr(cookie('phone'),0,3).'****'.substr(cookie('phone'),7,11);
		$this->assign('userphone',$userphone);
	}else{
		$this->assign('userphone',0);
	}
	$this->online();
	// hotschool
	$hotschools = DB::name('hotschool')->field('Id,topic')->where(['enabled'=>1,'sty'=>1])->order('ord ASC,date DESC')->select();
	$glinfor   = Db::name('information')->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,joptitle,hit')->where(['enabled'=>1,'sty'=>10])->limit(8)->order('istop DESC,ord ASC,date DESC')->select();
	$tjvideo   = Db::name('information')->field('course,inftype,Id,pic,topic,intro,filename,date,linkurl,istop,joptitle,hit')->where(['enabled'=>1,'sty'=>9])->limit(2)->order('istop DESC,ord ASC,date DESC')->select();
	$calendar = DB::name('calendar')->field('*')->where(['enabled'=>1])->order('ord ASC,date DESC')->select();
	$hotsearch = Db::name('information')->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,joptitle,hit')->where(['enabled'=>1])->limit(5)->order('istop DESC,ord ASC,date DESC')->select();
	//名师团队
	$teaminftype = DB::name('inftype')->field('Id,topic,sty')->where(['enabled'=>1,'sty'=>8])->order('ord ASC,date DESC')->limit(6)->select();
	$team = DB::name('information')->field('Id,inftype,topic,date,pic,joptitle')->where(['enabled'=>1,'sty'=>8])->order('ord ASC,date DESC')->limit(5)->select();
	$this->assign('teaminftype',$teaminftype);
	$this->assign('team',$team);
	$this->assign('calendar',$calendar);
	$this->assign('hotsearch',$hotsearch);
	$this->assign('tjvideo',$tjvideo);
	$this->assign('glinfor',$glinfor);
	$this->assign('hotschools',$hotschools);
	$this->assign('think',$this->req->baseFile());
	if ( !$conf = cache('sysconfig') ) {
	  $conf = Db::name('systemconfig')->field('metatitle,metades,metakey,companyname,address,email,wxqpic,tel,mobile,icpnote,c_site,c_text,sys_code,shieldip,iptips,isonline,qq,isqq,weibourl,weixinpic')->where('Id',1)->find();
	  if ( $conf ) cache('sysconfig',$conf);
	}
	if ( $conf ) {
	  if ( $conf['c_site'] ) {
	    header('Content-Type: text/html;charset=utf-8');
	    echo ($conf['c_text']!='') ? ('<h1 style="text-align:center;line-height:380px;color:#666;">'.$conf['c_text'].'</h1>') : ('<h1 style="text-align:center;line-height:380px;color:#666;">项目维护中，请稍后..</h1>');
        die;
	  }
	  $links = DB::name('links')->field('Id,topic,linkurl')->where('sty',1)->select();
	  foreach ($links as $key => $value) {
		if (preg_match('/(http:\/\/)|(https:\/\/)/i', $value['linkurl'])) {
			$links[$key]['linkurl'];
		}else{
			
			$links[$key]['linkurl'] = 'http://'.$value['linkurl'];
		}
	  }
	  $this->conf = $conf;
	  $this->assign('title','');
	  $this->assign('links',$links);
	  $this->assign('metatitle',$conf['metatitle']);
	  $this->assign('metakey',$conf['metakey']);
	  $this->assign('metades',$conf['metades']);
	  $this->assign('sysconf',$conf);
	} else {
	  exit('<h1 style="text-align:center;line-height:250px;color:#666;">NO SYSTEM DATA</h1>');
	}
  }

  
}
