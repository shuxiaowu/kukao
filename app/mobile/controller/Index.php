<?php
namespace app\mobile\controller;
use think\Db;
use \think\Request;
class Index extends Home{

	public function index(){
		$indexbanner=DB::name('advdata')->field('Id,linkurl,pic,topic')->where(array('enabled'=>1,'ctag'=>1))->order('ord ASC,Id DESC')->select();
		$newsindex = DB::name('information')->field('Id,topic,intro,date')->where(['enabled'=>1,'sty'=>1])->order('Id DESC,ord ASC')->limit(4)->select();
		$Clinical = DB::name('information')->field('Id,topic,pic')->where(['enabled'=>1,'sty'=>2,'inftype'=>15])->order('date DESC,ord ASC')->limit(3)->select();
		$diagnostic = DB::name('information')->field('Id,topic,pic')->where(['enabled'=>1,'sty'=>2,'inftype'=>16])->order('date DESC,ord ASC')->limit(3)->select();
		$aboutindex = DB::name('aboutus')->field('*')->where(['enabled'=>1,'sty'=>1,'Id'=>10])->find();
		$this->assign('aboutindex',$aboutindex);
		$this->assign('Clinical',$Clinical);
		$this->assign('diagnostic',$diagnostic);
		$this->assign('newsindex',$newsindex);
		return $this->fetch('',['mark'=>'index','indexbanner'=>$indexbanner]);
	}
	
	public function online(){
		if ( request()->isAjax() ) {
			return json(model('Home')->recordonline());
		} else {
			return json(['state'=>0,'msg'=>'非法请求']);
		}
	}
	public function about(){
		$sty = 1;
		$tables = 'aboutus';
		$title = "公司简介";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
		if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic(2));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','about');
		return $this->fetch();
	}
	public function newsinfo(){
		$type      = input('type',0,'intval');
		$sty       = 1;
		$pagesize  = 10;
		$mark      = 'news';
		$picid     = 6;
		$title     = '新闻中心';	
		$this->getNews($sty,$type,$pagesize,$mark,$title,$picid);
		return $this->fetch();
	}
	public function product(){
		$type      = input('type',0,'intval');
		$sty       = 2;
		$pagesize  = 16;
		$mark      = 'product';
		$picid     = 6;
		$title     = '产品中心';	
		$this->getNews($sty,$type,$pagesize,$mark,$title,$picid);
		return $this->fetch();
	}
	public function getNews($sty,$type,$pagesize,$mark,$title,$picid,$tables='information'){
		$where     = 'sty='.$sty.' AND enabled=1';
		if ($type) $where .= ' AND inftype='.$type;
		$newsType  = Db::name('inftype')->field('topic,Id')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC')->select();
		$count     = Db::name($tables)->where($where)->count();
		$page      = new \page\HomePage($count,$pagesize);
		$news      = Db::name($tables)->field('inftype,Id,pic,topic,intro,date,linkurl')->where($where)->order('ord ASC,Id DESC')->limit($page->limit)->select();
		$pageshow = ($count>$pagesize) ? $page->showpage() : '';
		$this->assign('pageshow',$pageshow);
		$this->assign('newsType',$newsType);
		$this->assign('news',$news);
		$this->assign('title',$title);
		$this->assign('type',$type);
		$this->assign('banner',insidepic($picid));
		$this->assign('mark',$mark);
	}
	public function service(){
		$sty = 2;
		$tables = 'aboutus';
		$title = "售后服务";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
	  // if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic(5));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','service');
		return $this->fetch();
	}
	public function hr(){
		$sty = 3;
		$tables = 'aboutus';
		$title = "人力资源";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
	  // if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic(7));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','hr');
		return $this->fetch();
	}
	public function contact(){
		$sty = 4;
		$tables = 'aboutus';
		$title = "联系我们";
		$firstId   =DB::name($tables)->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->order('ord ASC')->find();
		$Id  =Request::instance()->param('Id',$firstId['Id'],'intval');
		if (!$Id) $this->error('页面不存在ID');
		$datatype = Db::name($tables)->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,Id DESC')->select();
		$data = Db::name($tables)->field('topic,Id,content,content2,title,metades,keyword')->where(['enabled'=>1,'sty'=>$sty,'Id'=>$Id])->find();
		$this->assign('banner',insidepic(9));
		$this->assign('title', ($data['topic']!='')   ? $data['topic']   : $title);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('datatype',$datatype);
		$this->assign('mark','contact');
		return $this->fetch();
	}
	public function newsarticle(){
		$Id     = input('Id',0,'intval');
		$sty=1;
		$mark="news";
		$pic=6;
		$tables = 'information';
		$this->getArticle($Id,$sty,$tables,$mark,$pic);
		return $this->fetch();
	}
	public function productarticle(){
		$Id     = input('Id',0,'intval');
		$sty=2;
		$mark="product";
		$pic=4 ;
		$tables = 'information';
		$this->getArticle($Id,$sty,$tables,$mark,$pic);
		return $this->fetch();
	}
	public function getArticle($Id,$sty,$tables="information",$mark,$pic){
		if (!$Id) $this->error('页面不存在');
		$newsinfo=Db::name('inftype')->where(array('enabled'=>1,'sty'=>$sty))->order('ord ASC')->select();
		$data   = Db::name($tables)->field('topic,title,author,date,source,content,keyword,metades,sty,hit,source,intro,pic,linkurl,inftype')->where(['enabled'=>1,'Id'=>$Id])->find();
		if (!$data) $this->error('页面不存在');
		Db::name($tables)->where(array('enabled'=>1,'Id'=>$Id))->limit(1)->setInc('hit');
		if ($data['linkurl'] !='' ) header("Location:".$data['linkurl']);
		$data['date']    = date('Y-m-d',strtotime($data['date']));
		$data['author']  = ($data['author']=='admin') ? '' : $data['author'];
			     //上下篇

		$pageArr=getpage(array('inftype'=>$data['inftype'],'Id'=>$Id));
		$tops = $pageArr['topid'];
		$nexts = $pageArr['nextid'];
		$top  = Db::name($tables)->field('Id,topic,sty')->where('1=1 AND enabled=1 AND inftype='.$data['inftype'].' AND sty='.$data['sty'].' AND Id='.$tops)->find();
		$next =Db::name($tables)->field('Id,topic,sty')->where('1=1 AND enabled=1 AND inftype='.$data['inftype'].'  AND sty='.$data['sty'].' AND Id='.$nexts)->find();
		$this->assign('top',$top);
		$this->assign('next',$next);
		$this->assign('tops',$tops);
		$this->assign('nexts',$nexts);

		$this->assign('data',$data);
		$this->assign('inftype',$data['inftype']);
		$this->assign('newsinfo',$newsinfo);
		$this->assign('banner',insidepic($pic));
		$this->assign('title',  ($data['title']!='')   ? $data['title']   : $data['topic']);
		$this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
		$this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
		$this->assign('mark',$mark);
	}
	public function message(){
	   $title = "在线留言";
      $this->assign('banner',insidepic(8));
	  $this->assign('title',$title);
	  $this->assign('metades',$title);
	  $this->assign('metakey',$title);
	  $this->assign('mark','message');
	  return $this->fetch();
	}
	public function kmessage(){ 
		
		if (Request::instance()->isPost()){
				$send  = input('post.send','');
			if($send == '我要留言'){
				$uname   =input('post.user','');
				$tel     =input('post.tel','');
				$topic   =input('post.topic','');
				$email   =input('post.email','');
				$content =input('post.content','');
				$result  =DB::name('message')->insert(array('user'=>$uname,'topic'=>$topic,'phone'=>$tel,'email'=>$email,'content'=>$content,'date'=>date('Y-m-d h-i-s')));
			return json(array('data'=>'留言成功'));
			}
			else{
				return json(array('data'=>'留言失败'));
			}
				
		}
		else{
			return json(array('data'=>'非法提交'));
		}
	
	}

}
