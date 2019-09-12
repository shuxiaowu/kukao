<?php
namespace app\home\controller;
use think\Db;

class Article extends Home{
	protected $indexuid;
	public function videoArt(){
		$this->indexuid = cookie('phone') ? 1 : 0;
		$id  = input('Id',0,'intval');
		$mark= input('mark','');
		$tables = 'information';
		$data   = Db::name($tables)->field('advlinkurl,Id,topic,title,author,date,content,keyword,metades,sty,hit,source,intro,pic,linkurl,inftype,course')->where(['enabled'=>1,'Id'=>$id])->find();
		$videolists = Db::name($tables)->field('Id,topic,title,author,date,content,keyword,metades,sty,hit,source,intro,pic,linkurl,inftype,course')->where(['enabled'=>1,'inftype'=>$data['inftype']])->select();
		Db::name($tables)->where(array('enabled'=>1,'Id'=>$id))->limit(1)->setInc('hit');
		$isfree = model('Home')->ckinftype($tables,$id);

		$vd_url = $this->indexuid==1 ? $data['linkurl'] :$data['advlinkurl'];
		$this->assign('videolists',$videolists);
		$this->assign('title',$data['topic'] ? $data['topic'] : '视频课程');
		$this->assign('isfree',$isfree);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('id',$id);
		$this->assign('data',$data);
		$this->assign('mark',$mark);
		$this->assign('vd_url',$vd_url);
		$this->assign('indexuid',$this->indexuid);
		return view();
	}
	public function ztArticle(){
		$this->getArticle();
		return view();

	}
	// 
	public function index(){
		$this->getArticle();
	  return $this->fetch();
	}
	private function getArticle(){
		$id     = input('Id',0,'intval');
		$tables = 'information';
		$markname = input('markname',0,'intval');
  
		$mark= input('mark','');
		if (!$id) $this->error('页面不存在');
		$data   = Db::name($tables)->field('topic,title,author,date,content,keyword,metades,sty,hit,source,intro,pic,linkurl,inftype,course')->where(['enabled'=>1,'Id'=>$id])->find();
		if (!$data) $this->error('页面不存在');
		Db::name($tables)->where(array('enabled'=>1,'Id'=>$id))->limit(1)->setInc('hit');
	  //   if ($data['linkurl'] !='' ) header("Location:".$data['linkurl']);
		$data['date']    = date('Y-m-d',strtotime($data['date']));
		$data['author']  = ($data['author']=='admin') ? '' : $data['author'];
		// 
				 //上下篇
		$pageArr=model('Home')->getpage(array('inftype'=>$data['inftype'],'Id'=>$id));
		$tops = $pageArr['topid'];
		$nexts = $pageArr['nextid'];
		  $top  = Db::name($tables)->field('Id,topic,sty')->where('1=1 AND enabled=1 AND inftype='.$data['inftype'].' AND sty='.$data['sty'].' AND Id='.$tops)->find();
		$next =Db::name($tables)->field('Id,topic,sty')->where('1=1 AND enabled=1 AND inftype='.$data['inftype'].'  AND sty='.$data['sty'].' AND Id='.$nexts)->find();
		$this->assign('top',$top);
		$this->assign('next',$next);
		$this->assign('tops',$tops);
		$this->assign('nexts',$nexts);
		$this->assign('inftype',$data['inftype']);
		  // 
		$this->assign('data',$data);
		$this->assign('mark',$mark);
		$this->assign('markname',$markname);
		$this->assign('banner',insidepic(2));
		$this->assign('title',  ($data['title']!='')   ? $data['title']   : $data['topic']);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		return $this->fetch();
	  }
	public function online(){
	  if ( request()->isAjax() ) {
	    return json(model('Home')->recordonline());
	  } else {
	    return json(['state'=>0,'msg'=>'非法请求']);
	  }
	}
}
