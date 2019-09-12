<?php
namespace app\ltadmin\controller;
use think\Db;

class Online extends Common{
	
	public function dataonline(){
      $act     = input('act',1,'intval');
	  $chart   = input('chart',1,'intval');
	  $act     = ($act<1 || $act>3) ? 1 : $act;
	  $sday    = input('post.sday','');
	  $eday    = input('post.eday','');
	  $where   = '1=1';
	  $nowtime = date('Y-m-d'); 
	  $subtitle = '';
	  if ( $act == 1 ) {
	    $scene    = array('primary','default','default');
		$week     = date("Y-m-d", strtotime("-7 days", strtotime($nowtime)));
	    $where   .= " AND day<='".$nowtime."' AND day>='".$week."'";
		$subtitle = '最近7天访问统计信息图';
	  }
	  if ( $act == 2 ) {
	    $scene    = array('default','primary','default');
		$month    = date("Y-m-d", strtotime("-31 days", strtotime($nowtime)));
		$where   .= " AND day<='".$nowtime."' AND day>='".$month."'";
		$subtitle = '最近30天访问统计信息图';
	  }
	  if ( $act == 3 ) {
	    $scene    = array('default','default','primary');
		$where   .= " AND day<='".date('Y-m-30')."' AND day>='".date('Y-m-1')."'";
		$subtitle = '本月访问统计信息图';
	  }
	  if ($chart == 1) {
	    $chartscene = array('success','default','default');
		$type = 'line';
	  }
	  if ($chart == 2) {
	    $chartscene = array('default','success','default');
		$type = 'column';
	  }
	  if ($chart == 3) {
	    $chartscene = array('default','default','success');
		$type = 'area';
	  }
	  if ($sday!='' && $eday!='') {
	    $scene    = array('default','default','default');
		$where    = "1=1 AND day<='".date('Y-m-d',strtotime($eday))."' AND day>='".date('Y-m-d',strtotime($sday))."'";
		$subtitle = $sday.'至'.$eday.'访问统计信息图';
	  }
	  $data    = Db::name('online')->group('day')->where($where)->order('day ASC')->limit('30')->select();
	  $chartx  = '' ;
	  $pvcount = '';
	  $ipcount = '';
	  $ucount  = '';
	  $week    = array('星期天','星期一','星期二','星期三','星期四','星期五','星期六');
	  if ($data) {
	    foreach($data as $key=>$val) {
		  $pv                    = $this->getonlinepv($val['day']);
		  $ips                   = $this->getonlineip($val['day']);
		  $data[$key]['pv']      = $pv;
		  $data[$key]['action']  = $this->getonlineaction($val['day']);
		  $data[$key]['ipcount'] = $ips;
		  $data[$key]['time']    = $this->getonlinetime($val['day']);
		  $data[$key]['weekday'] = (date("w",strtotime($val['day']))==0) ? '<font color="red"'.tooltip('礼拜天').'>'.$val['day'].'</font>' : '<font'.tooltip($week[date("w",strtotime($val['day']))]).'>'.$val['day'].'</font>'; 
		  $chartx               .= "'".date("Y/m/d",strtotime($val['day']))."',";
		  $pvcount              .= $pv.',';
		  $ipcount              .= $ips.',';
		}
	  }
	  $chartx  = ($chartx!='')  ? trim($chartx,',') : '';
	  $pvcount = ($pvcount!='') ? trim($pvcount,',') : '';
	  $ipcount = ($ipcount!='') ? trim($ipcount,',') : '';
	  $this->assign('type',$type);
	  $this->assign('data',$data);
	  $this->assign('scene',$scene);
	  $this->assign('subtitle',$subtitle);
	  $this->assign('chartx',$chartx); 
	  $this->assign('pvcount',$pvcount); 
	  $this->assign('ipcount',$ipcount); 
	  $this->assign('chartscene',$chartscene);
	  $this->assign('chartindex',$chart);
	  $this->assign('sday',$sday);
	  $this->assign('eday',$eday);
	  $this->assign('date',true);
	  $this->assign('act',$act);
	  $this->assign('title',($subtitle!='') ? $subtitle : '在线统计');
	  return view();
	}
	
	//浏览量
	private function getonlinepv($day) {
	  if ($day!='') {
	    return Db::name('online')->where(array('day'=>$day))->count();
	  } else {
	    return 0; 
	  }
	}
	
	//访问量
	private function getonlinevisit($day) {
	  if ($day!='') {
	    return Db::name('online')->where(array('day'=>$day))->count('distinct ip');
	  } else {
	    return 0;
	  }
	}
	
	//Ip量
	private function getonlineip($day) {
	  if ($day!='') {
	    return Db::name('online')->where(array('day'=>$day))->count('distinct ip');
	  } else {
	    return 0;
	  }
	}
	
	//受访问最多的模块
	private function getonlineaction($day) {
      if ($day!='') {
	    $data = Db::name('online')->group('actionid')->where(array('day'=>$day))->order('hit DESC')->find();
		return ($data) ? $data['action'] : '--';
	  } else {
	    return '--';
	  }
	}
	
	//访问时长
	private function getonlinetime($day) {
	  if ($day!='') {
	    $total = 0 ;
		$data  = Db::name('online')->group('actionid')->where("day='".$day."' AND etime>0")->select();
		if ($day && count($data) > 0) {
		   foreach($data as $key=>$val) {
		     $total += ($val['etime'] > 0 ) ? (intval($val['etime'])-intval($val['stime'])) : 0;
		   } 
		   return $this->dealwithtime(intval($total / count($data)));
		}
	  } else {
	    return '--s';
	  }
	}
	
	//处理时间
	private function dealwithtime($times) {
	  if ($times > 0) {
	    if ($times < 60) {
		  return '00:00:'.$times;
		} else if ($times >= 60 && $times < 3600 ) {
		  return  gmstrftime('%H:%M:%S', $times);
		} else if ($times >= 3600 ) {
		  return intval($times/3600).":".gmstrftime('%M:%S', $times-3600);
		}
	  } else {
	    return '00:00:00';
	  }
	}
	
	//查看详细
	public function onlinedetail(){
	  $day   = input('day','');
	  $page  = input('page',1,'intval');
	  $where = ($day!='') ? "day='$day'" : '1=1';
	  $count = Db::name('online')->where($where)->count();
	  $pobj  = new \page\AdminPage($count,config('adminpage'));
	  $data  = Db::name('online')->field('*')->where($where)->order('hit DESC,stime DESC')->limit($pobj->limit)->select();
	  if ($data && count($data) > 0) {
	    foreach($data as $key=>$val) {
		  $data[$key]['timeconsuming'] = ($val['etime'] > 0) ? $this->dealwithtime($val['etime']-$val['stime']) : '00:00:00';
	    }
	  }
	  $datashow = array();
	  $datashow['pageno']   = ($page-1)*$pobj->pagesize;
	  $datashow['pageshow'] = ($count>config('adminpage')) ? $pobj->showpage() : '';
	  $datashow['day']      = $day;
	  return $this->fetch('',['date'=>true,'title'=>$day.'在线访问统计详细管理','dshow'=>$datashow,'data'=>$data]);
    }

}