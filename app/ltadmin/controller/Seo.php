<?php
namespace app\ltadmin\controller;
use think\Db;

class Seo extends Common{
	
    public function seoconf(){
      $tables = 'seoconf';
      $send = input('post.send', '');
      if ($send == '') {
		$data = Db::name($tables)->field('*')->where('Id',1)->find();
		return $this->fetch('',['data'=>$data,'title'=>'百度优化配置']);
      } elseif ($send == '确定保存') {
		$articleurl  = cg('articleurl');
		$marticleurl = cg('marticleurl');
		$mipurl      = cg('mipurl');
		$baiduurl    = cg('baiduurl');
		$isauto      = input('post.isauto',0,'intval');
		$result      = Db::name($tables)->where('Id',1)->update(array('articleurl'=>$articleurl,'marticleurl'=>$marticleurl,'mipurl'=>$mipurl,'baiduurl'=>$baiduurl,'isauto'=>$isauto,'date'=>dates()));
		if ($result) {
		  $this->success('资料更新成功');
		} else {
		  $this->error('更新失败');
		}
      }
    }
	
    public function seosend(){
      $send = input('post.send', '');
	  if ($send == '') {
		$data = Db::name('seoconf')->field('*')->where('Id',1)->find();
        return $this->fetch('',['data'=>$data,'title'=>'手动提交']);
      } else if ($send == '确定推送') {
	    $sendurl = cg('sendurl');
	    if ( $sendurl == '' ) $this->error('推送的URI不能为空');
	    $sendurl = explode("\n",$sendurl);
	    $uri = array();
	    foreach ( $sendurl as $url ) {
		  if ( trim($url)!='' ) $uri[] = $url;
	    }
	    $res = sendSeo( $uri );
	    if ( $res['state'] ) {
		  $this->success($res['msg'],url('seo/seosend'));
	    } else {
		  $this->error($res['msg']);
	    }
      }
    }
	
	public function map(){
	  $absurl = 'http://'.$_SERVER['SERVER_NAME'];
	  $xml    = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<urlset xmlns=\"".$absurl."\">\r\n";
	  $xml   .= "<url>\r\n"."<loc>".$absurl.'/index/index.html'."</loc>\r\n"."<priority>0.8</priority>\r\n<lastmod>".date('Y-m-d')."</lastmod>\r\n<changefreq>weekly</changefreq>\r\n</url>\r\n";
	  $data   = Db::name('information')->field('Id,date')->where('1=1 AND enabled=1')->order('istop DESC,date DESC')->select();
	  if ( $data ) {
		foreach( $data as $nkey=>$nval ) {
		  $url = $absurl.'/article/'.$nval['Id'].'.html';
		  $xml .= "<url>\r\n"."<loc>".$url."</loc>\r\n"."<priority>0.8</priority>\r\n<lastmod>".date('Y-m-d',strtotime($nval['date']))."</lastmod>\r\n<changefreq>weekly</changefreq>\r\n</url>\r\n";
		}
	  } 
	  $xml .= '</urlset>';
	  $file = fopen("sitemap.xml","w");
	  fwrite($file,$xml);
	  fclose($file);
	  $this->success('地图更新成功',url('index/index'),2);
	}
	
}