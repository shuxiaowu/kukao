<?php
namespace app\home\controller;
use think\Db;

class News extends Home{
	
   public function index(){
	 $type      = input('type',0,'intval');
	 $sty       = 1;
	 $pagesize  = 15;
	 $mark      = 'mark';
	 $picid     = 0;
	 $title     = '新闻中心';
	 $tables    = 'information';
	 if ($type) $type = (model('Home')->cktype('inftype',$type)) ? $type : 0;
	 $kwd       = input('param.kwd');
	 $kwd       = iconv('GB2312', 'UTF-8', $kwd);
	 $kwd       = model('Home')->dosqlxss($kwd);
	 $where     = 'sty='.$sty.' AND enabled=1';
	 if ($type) $where .= ' AND inftype='.$type;
	 if ($kwd)  $where .= " AND ( topic LIKE '%".$kwd."%' OR intro LIKE '%".$kwd."%')";
	 $newsType  = Db::name('inftype')->field('topic,Id')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC')->select();
	 $count     = Db::name($tables)->where($where)->count();
	 $page      = new \page\HomePage($count,$pagesize);
	 $news      = Db::name($tables)->field('inftype,Id,pic,topic,intro,date,linkurl')->where($where)->order('istop DESC,date DESC')->limit($page->limit)->select();
	 //tdk设置
	 $title     = ($type) ? model('Home')->gdata('inftype',(int)$type) : $title;
	 $tdk       = ($type) ? gettdk($type,'inftype') : false;
	 if ( $tdk && $tdk['title'] !='' ) {
	   $title   = $tdk['title'];
	   $this->assign('metades',$tdk['metades']);
	   $this->assign('metakey',$tdk['keyword']);
	 }
	 //end
	 $pageshow = ($count>$pagesize) ? $page->showpage() : '';
     return $this->fetch('',['kwd'=>$kwd,'pageshow'=>$pageshow,'newsType'=>$newsType,'news'=>$news,'title'=>$title,'type'=>$type,'banner'=>insidepic($picid),'mark'=>$mark]);
   }
	
}
