<?php
// +----------------------------------------------------------------------
// | Project: bofangkaoyan Lamp version 1.0
// +----------------------------------------------------------------------
// | Copyright (c) 2019  All rights reserved.
// +----------------------------------------------------------------------
// | Author: shubin <17611509611@163.com>
// +----------------------------------------------------------------------
// | Date: 2019/10
// +----------------------------------------------------------------------
// | Time: 15:29
// +----------------------------------------------------------------------
// | Notice:
// +----------------------------------------------------------------------

namespace app\home\controller;
use think\Db;
use think\Request;

class Index extends Home{
	//主页
    public function index(){
		$mark = 'index';
		$advdb= 'advdata';
		//MBA
		$mbafocus = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>0,'sty'=>1])->order('ord ASC,date DESC')->limit(12)->select();
		$mbafocustop = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>1,'sty'=>1])->order('ord ASC,date DESC')->limit(2)->select();
		$mbainftype = DB::name('inftype')->field('Id,topic,sty')->where(['enabled'=>1,'sty'=>1])->order('ord ASC,date DESC')->limit(6)->select();
		foreach ($mbainftype as $key => $val) {
			$mbainftype[$key]['data'] = DB::name('information')->field('Id,topic,date')->where(['enabled'=>1,'inftype'=>$val['Id']])->order('ord ASC,date DESC')->select();
		}
		foreach ($mbafocus as $key => $value) {

			$mbafocus[$key]['type'] = model('Home')->gdata('inftype',$value['inftype'],'topic');
		}
		//MPA
		$mpafocus = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>0,'sty'=>2])->order('ord ASC,date DESC')->limit(12)->select();
		$mpafocustop = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>1,'sty'=>2])->order('ord ASC,date DESC')->limit(2)->select();
		$mpainftype = DB::name('inftype')->field('Id,topic,sty')->where(['enabled'=>1,'sty'=>2])->order('ord ASC,date DESC')->limit(6)->select();
		foreach ($mpafocus as $key => $value) {

			$mpafocus[$key]['type'] = model('Home')->gdata('inftype',$value['inftype'],'topic');
		}
		//MPACC
		$mpaccmeg = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'sty'=>3])->order('ord ASC,date DESC')->limit(12)->select();
		$mpaccfocustop = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>1,'sty'=>3])->order('ord ASC,date DESC')->limit(2)->select();
		$mpaccinftype = DB::name('inftype')->field('Id,topic,sty')->where(['enabled'=>1,'sty'=>3])->order('ord ASC,date DESC')->limit(6)->select();
		foreach ($mpaccmeg as $key => $value) {

			$mpaccmeg[$key]['type'] = model('Home')->gdata('inftype',$value['inftype'],'topic');
		}
		// 专题
		$hottest = DB::name('information')->field('Id,inftype,topic,date,pic')->where(['enabled'=>1,'sty'=>11])->order('ord ASC,date DESC')->limit(5)->select();
		//热门视频
		$videos = DB::name('information')->field('Id,inftype,topic,date,pic')->where(['enabled'=>1,'sty'=>9])->order('ord ASC,date DESC')->limit(5)->select();
		
		//广告图
		
		$this->assign('advindexpic',model('Home')->getadvpic($advdb,1));
		$this->assign('advmbapic',model('Home')->getadvpic($advdb,2));
		$this->assign('advmpapic',model('Home')->getadvpic($advdb,3));
		$this->assign('advmpaccpic',model('Home')->getadvpic($advdb,4));
		// 
		$this->assign('videos',$videos);
		$this->assign('hottest',$hottest);
		$this->assign('mpafocus',$mpafocus);
		$this->assign('mpafocustop',$mpafocustop);
		$this->assign('mpainftype',$mpainftype);
		$this->assign('mpaccmeg',$mpaccmeg);
		$this->assign('mpaccfocustop',$mpaccfocustop);
		$this->assign('mpaccinftype',$mpaccinftype);
		$this->assign('mbainftype',$mbainftype);
		$this->assign('mbafocustop',$mbafocustop);
		$this->assign('mbafocus',$mbafocus);
		$this->assign('mark',$mark);
		return $this->fetch();
	}
	
	
	//mba点击more页面
	public function mbaMoreBtn(){
		$mark = input('mark','');
		$sty = input('sty',0,'intval');
		$pagesize = 15;
		$picid = 0;
		$title = '全部';
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	//mba
	public function mba(){
		$mark = 'mba';
		$sty = 1;
		$title = 'mba';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
	}
	//mpa
	public function mpa(){
		$mark = 'mpa';
		$sty = 2;
		$title = 'mpa';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
	}
	//mpacc
	public function mpacc(){
		$mark = 'mpacc';
		$sty = 3;
		$title = 'mpacc';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
	}
	//mea
	public function mea(){
		 $mark = 'mea';
		 $sty = 4;
		 $title = 'mea';
		 $this->degree($mark,$sty,$title);
		 return $this->fetch('index/degree/mba');
	}
	//mta
	public function mta(){
		$mark = 'mta';
		$sty = 5;
		$title = 'mta';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
   }
   //maud
	public function maud(){
		$mark = 'maud';
		$sty = 6;
		$title = 'maud';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
   }
   //mlis
	public function mlis(){
		$mark = 'mlis';
		$sty = 7;
		$title = 'mlis';
		$this->degree($mark,$sty,$title);
		return $this->fetch('index/degree/mba');
   }
	//mba点击页面
	public function degree($mark,$sty,$title){
		$urlname = input('urlname','');
		$type = input('type',0,'intval');
		$where ='1=1 AND sty='.$sty;
		if($type)$where .= " AND inftype=".$type; 
		$datafocus = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>0,'sty'=>$sty])->order('ord ASC,date DESC')->limit(12)->select();
		$datalist = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'sty'=>$sty,'inftype'=>$type])->order('ord ASC,date DESC')->limit(12)->select();
		
		$datafocustop = DB::name('information')->field('Id,inftype,topic,date')->where(['enabled'=>1,'istop'=>1,'sty'=>$sty])->order('ord ASC,date DESC')->limit(2)->select();
		$datainftype = DB::name('inftype')->field('Id,topic')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC,date DESC')->limit(6)->select();
		foreach ($datainftype as $key => $val) {
			$datainftype[$key]['data'] = DB::name('information')->field('Id,topic,date')->where(['enabled'=>1,'inftype'=>$val['Id']])->order('ord ASC,date DESC')->select();
		}
		foreach ($datafocus as $key => $value) {

			$datafocus[$key]['type'] = model('Home')->gdata('inftype',$value['inftype'],'topic');
		}
		$data = DB::name('information')->field('Id,inftype,topic,date,intro,hit')->where($where)->order('ord ASC,date DESC')->paginate(5);
		$this->assign('advtoppic',model('Home')->getadvpic('advdata',5));
		$this->assign('data',$data);
		$this->assign('urlname',$urlname);
		$this->assign('type',$type);
		$this->assign('sty',$sty);
		$this->assign('datafocus',$datafocus);
		$this->assign('datafocustop',$datafocustop);
		$this->assign('datainftype',$datainftype);
		$this->assign('mark',$mark);
		$this->assign('title',$title);
		
	}
	// 名师团队
	public function team(){
		$mark = 'team';
		$sty = 8;
		$pagesize = 30;
		$picid = 0;
		$title = '名师团队';
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	// 历年真题
	public function yearTest(){
		$mark = 'yearTest';
		$sty = 12;
		$pagesize = 12;
		$picid = 0;
		$title = '历年真题';
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	// 管联资讯
	public function manageZx(){
		$mark = 'manageZx';
		$sty = 10;
		$pagesize = 12;
		$picid = 0;
		$title = '管联资讯';
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	// 管联专题
	public function manageZt(){
		$mark = 'manageZt';
		$sty = 11;
		$pagesize = 12;
		$picid = 0;
		$title = '管联专题';
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		return $this->fetch();
	}
	// 视频课程
	public function video(){
		$course = input('course',0,'intval');
		// phone
		$map = '1=1';
		$icon = input('icon',1,'intval');
		$vdtype = input('vdtype',10,'intval');
		// 
		$isvip = 0;
		if(cookie('phone')){
			$freevip = input('freevip',10,'intval');
			$isvip = 1;
		}else{
			$freevip = 10;
			$isvip = 0;
		}
		$where ='1=1';
		if($course!=0){
			$where.=' AND course='.$course;
			$map.=' AND course='.$course;
		}
		$mark = 'video';
		$sty = 9;
		$pagesize = 12;
		$picid = '';
		$title = '视频课程';
		$tables = 'information';
		$subtype =  Db::name('course')->field('Id,topic')->where(['enabled'=>1])->order('ord ASC,Id DESC')->select();
		$this->getNews($sty,$pagesize,$mark,$picid,$title);
		$datafree  = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,course,hit')->where(['sty'=>9,'inftype'=>10])->order('istop DESC,ord ASC,date DESC')->paginate($pagesize);
		$phonefree  = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,course,hit')->where(['sty'=>9,'inftype'=>$vdtype])->where($map)->order('istop DESC,ord ASC,date DESC')->paginate($pagesize);
		$datavip  = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,course,hit')->where(['sty'=>9,'inftype'=>$freevip])->where($where)->order('istop DESC,ord ASC,date DESC')->select();
		$this->assign('phonefree',$phonefree);
		$this->assign('icon',$icon);
		$this->assign('vdtype',$vdtype);
		$this->assign('course',$course);
		$this->assign('datafree',$datafree);
		$this->assign('subtype',$subtype);
		$this->assign('freevip',$freevip);
		$this->assign('isvip',$isvip);
		$this->assign('datavip',$datavip);
		return $this->fetch();
	}
	// 报名中心
	public function applyCenter(){
		$mark = 'applyCenter';
		$this->assign('mark',$mark);
		return $this->fetch();
	}
	//接手报名信息
	public function applyGet(){
		$degree = input('degree',0,'intval');//是否专业硕士
		$simpletext = input('simpletext','');//简章
		$name = input('name','');//姓名
		$sex = input('sex',0,'intval');//性别
		$phone = input('phone',0,'intval');//手机
		$email = input('email','');//邮箱
		$education = input('education','');//学历
		$enddate = input('enddate','')=='' ? time() : input('enddate','');//毕业时间
		$province = input('province','');//省
		$town = input('town','');//市
		$area = input('area','');//区
		if($province!='0'){$city = $province.'省'.$town.'市'.$area;}else{$city='';}
		$remark = input('remark','');//备注
		$code = input('code','');//验证码
		$data = array('degree'=>$degree,'simpletext'=>$simpletext,'ip'=>request()->ip(),'name'=>$name,'sex'=>$sex,'phone'=>$phone,'email'=>$email,'education'=>$education,'enddate'=>date('Y-m-d',strtotime($enddate)),'date'=>date('Y-m-d',time()),'area'=>$city,'remark'=>$remark);
		if(request()->isAjax()){
		$verify = new \verify\Verify();
			if($verify->check($code)){
				if(model('Home')->upapply($data)){
					return json(['status'=>1,'data'=>$data,'msg'=>'提交成功']);
				}else{
					return json(['status'=>3,'data'=>$data,'msg'=>'提交失败']);
				}
			
			}else{
				return json(['status'=>0,'data'=>$data,'msg'=>'验证码错误']);
			}
		}else{
			return json(['status'=>6,'data'=>$data,'msg'=>'非法提交']);
		}
		
	}
	//关于我们
	public function about(){
		$mark = 'about';
		$sty = input('sty',1,'intval');
		$firstId   =DB::name("aboutus")->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->find();
		$Id = input('Id',$firstId['Id'],'intval');
		$data = '';
		$abouttype = DB::name('aboutus')->field('Id,topic')->where(['enabled'=>1,'sty'=>1])->order("Id ASC")->select();
		switch ($sty) {
			case 1:
			$typename = 'about';
			$data = DB::name('aboutus')->where(['enabled'=>1,'sty'=>1,'Id'=>$Id])->order("Id ASC")->find();
			$topname = $data['topic'];
			$title   = $data['topic'];
			break;
			case 4:$typename = 'webmap';$topname = '网站地图';$title="网站地图";break;
			default:$typename = 'about';$topname = '关于我们';$title="关于我们";break;
		}
		// dump($abouttype);exit;
		$this->assign('data',$data);
		$this->assign('Id',$Id);
		$this->assign('abouttype',$abouttype);
		$this->assign('metades',($data) ? $data['metades'] : $title);
		$this->assign('metakey',($data) ? $data['keyword'] : $title);
		$this->assign('sty',$sty);
		$this->assign('title',$title);
		$this->assign('mark',$mark);
		$this->assign('typename',$typename);
		$this->assign('topname',$topname);
		return $this->fetch('index/aboutus/about');
	}
	/* -
     * +------------------------------------------------------------------------
     * * @ param $sty 类别
	 * * @ param $pagesize 分页数
	 * * @ param $mark 类别
	 * * @ param $picid 图片类别
     * +------------------------------------------------------------------------
     */
	public function getAbout($sty,$mark,$title,$picid,$markname = 'aboutnav'){
		$firstId   =DB::name("aboutus")->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->limit(1)->find();
		$Id = input('Id',$firstId['Id'],'intval');
		// if(!$Id){$this->error('暂时没有id');}
		$tables=DB::name('aboutus')->field("Id,topic,intro,content,sty,metades,keyword,pic");
		$con=$tables->where(['enabled'=>1,'Id'=>$Id])->order("Id ASC")->find();
		if(!$con){$this->error('暂时没有内容');}
		$list = $tables->where(['enabled'=>1,'sty'=>$sty])->order("ord ASC,Id ASC")->select();

		$this->assign('banner',insidepic($picid));
		$this->assign('metades',($con['metades']!='') ? $con['metades'] : $con['topic']);
		$this->assign('metakey',($con['keyword']!='') ? $con['keyword'] : $con['topic']);
		$this->assign('title',$title=='' ? $con['topic'] : $title);
		$this->assign('list',$list);
		$this->assign('Id',$Id);
		$this->assign('con',$con);
		$this->assign('mark',$mark);
		$this->assign('sty',$sty);
		$this->assign('markname',$markname);
	}
	/* -
     * +------------------------------------------------------------------------
     * * @ param $sty 类别
	 * * @ param $pagesize 分页数
	 * * @ param $mark 类别
	 * * @ param $picid 图片类别
	 * * @ param $title 页面标题
     * +------------------------------------------------------------------------
     */
	public function getNews($sty,$pagesize,$mark,$picid,$title,$tables='information'){
		$firstty   =DB::name("inftype")->field('Id')->where(array('enabled'=>1,'sty'=>$sty))->order('ord ASC,Id DESC')->limit(1)->find();
		$type = input('type',0,'intval');
		$years = input('years',0,'intval');
		// echo $type;exit;
		if ($type) $type = (model('Home')->cktype('inftype',$type)) ? $type : 0;
		if ($years) $year = (model('Home')->cktype('years',$years)) ? $years : 0;
		 $kwd       = input('param.kwd');
		 $kwd       = iconv('GB2312', 'UTF-8', $kwd);
		 $kwd       = model('Home')->dosqlxss($kwd);
		 $where     = 'sty='.$sty.' AND enabled=1';
		 if($sty == 12) $where.=' AND years='.$years;
		 $yearstype = model('Home')->getyears('years',1);

		 if ($type) $where .= ' AND inftype='.$type;
		 if ($kwd)  $where .= " AND ( topic LIKE '%".$kwd."%' OR intro LIKE '%".$kwd."%')";
		 $dataType  = Db::name('inftype')->field('topic,Id')->where(['enabled'=>1,'sty'=>$sty])->order('ord ASC')->select();
		 $count     = Db::name($tables)->where($where)->count();
		 $page      = new \page\HomePage($count,$pagesize);
		 $data      = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,joptitle,hit')->where($where)->order('istop DESC,ord ASC,date DESC')->paginate($pagesize);
		 foreach ($dataType as $key => $value) {
		 		$dataType[$key]['datatypes'] = Db::name($tables)->field('hit,inftype,Id,pic,topic,intro,date,linkurl,istop,joptitle')->where(['enabled'=>1,'inftype'=>$value['Id']])->order('istop DESC,ord ASC,date DESC')->select();
		 	}
		 //tdk设置
		 $title   = ($type) ? model('Home')->gdata('inftype',(int)$type) : $title;

		 $pageshow = ($count>$pagesize) ? $page->showpage() : '';
		 $this->assign(['kwd'=>$kwd,'sty'=>$sty,'yearstype'=>$yearstype,'years'=>$years,'pageshow'=>$pageshow,'dataType'=>$dataType,'data'=>$data,'title'=>$title,'type'=>$type,'banner'=>insidepic($picid),'mark'=>$mark]);
	}
	//登录
	public function login(){
		$phone = input('phone','');
		$password = input('password','');
		if (request()->isAjax()){
			if($phone!='' && $password!=''){
			    if(model('menber')->ckphone($phone)){
					if(model('menber')->ckpassword($phone,$password)){
						cookie('phone',$phone,3600*24*1);
						DB::name('menber')->where(['user'=>$phone])->update(['last_ip'=>request()->ip()]);
						Db::name('menber')->where(['user'=>$phone])->limit(1)->setInc('count');
						return json(['msg'=>'登录成功','status'=>1]);
					}else{
						return json(['msg'=>'密码错误','status'=>2]);
					}		
				}else{
					return json(['msg'=>'手机号不存在','status'=>3]);
					}
       		 }else{
				return json(['msg'=>'密码不能为空','status'=>4]);
            
				 }
		}else{
			return json(['msg'=>'请求非法','status'=>5]);
		}
	}
	public function endlogin(){
		cookie('phone',null);
	}
	public function online(){
		return json(model('Home')->recordonline());
	//   if ( request()->isAjax() ) {
	    
	//   } else {
	//     return json(['state'=>0,'msg'=>'非法请求']);
	//   }
	}
	public function logincode(){
		$config = array('length' => 4,'useImgBg' => false,'useNoise' => false,'useCurve' => false ,'fontttf' => '7.ttf','bg' => array('255','255','255'),'imageW'=>'97','imageH'=>'27','fontSize'=>'13','useZh'=>false,'codeSet'=>'0123456789');
		$verify = new \verify\Verify($config);
    	ob_clean();
		$verify->entry();
	  }
	// 搜索
	public function search(){
		$pagesize  = 10;
		$search=input('param.btn-submit','');
		$keyword = input('keyword','');
		// $data['sty']=1;
		$data['topic']=array('like','%'.$keyword.'%');
		$count     = Db::name('information')->where($data)->count();
		$page      = new \page\HomePage($count,$pagesize);
		$result=DB::name('information')->field('Id,intro,sty,topic,title,date,pic,content')->where($data)->limit($page->limit)->select();
		foreach ($result as $k=>$v){
			if($v['intro'] || $v['topic']){
				$str=str_replace("$keyword","<font color=red>$keyword</font>",$v['intro']);
				$strs=str_replace("$keyword","<font color=red>$keyword</font>",$v['topic']);
				$result[$k]['intro']=$str;
				$result[$k]['topic']=$strs;

			}

		}
		$pageshow = ($count>$pagesize) ? $page->showpage() : '';
		$this->assign('pageshow',$pageshow);
		$this->assign('keyword',$keyword);		
		$this->assign('result',$result);
		$this->assign('mark','search');
		return $this->fetch();
	}
	// 预约
	public function appoint(){
		$name = input('name','');
		$tel = input('tel','');
		$inftype = input('inftype','');
		$add = array('topic'=>$name,'phone'=>$tel,'inftype'=>$inftype);
		if(request()->isAjax()){
			$data = Db::name('message')->insert($add);
			if($data){
				return json(['status'=>1]);
			}else{
				return json(['status'=>2]);
			}
		}else{
			return json(['status'=>0]);
		}
	}
	// 换一批
	public function changeVideo(){
		$page = input('page',1,'intval');
		$tables = 'information';
		$data  = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,course,hit')->where(['sty'=>9,'inftype'=>10])->order('istop DESC,ord ASC,date DESC')->page($page,4)->select();
		$count  = Db::name($tables)->field('inftype,Id,pic,topic,intro,filename,date,linkurl,istop,course,hit')->where(['sty'=>9,'inftype'=>10])->order('istop DESC,ord ASC,date DESC')->page($page,4)->count();
		return json(['data'=>$data,'page'=>$page,'status'=>1,'count'=>$count]);
		
	}
}