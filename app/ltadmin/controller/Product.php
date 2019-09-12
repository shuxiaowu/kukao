<?php
namespace app\ltadmin\controller;
use think\Db;

class Product extends Common{
	
    public function proctaglist(){
      $sty = input('sty', 1, 'intval');
      $this->pageDisplay(array('where' => array('sty' => $sty), 'sty' => $sty, 'title' => '类别管理'));
      return view();
    }
	
    public function proctagadd(){
      $tables = input('tables', '');
      $send   = input('post.send', '');
      $sty    = input('sty', 1, 'intval');
      if ($tables == '') $this->error('数据表为空，无法获取数据');
      if ($send == '') {
        return $this->fetch('',['title'=>'添加类别','tables'=>$tables,'sty'=>$sty]);
      } elseif ($send == '提交') {
        $result = Db::name($tables)->insert($this->fieldArr(array('domain', 'sty')));
        if ( $result ) {
          $this->success('资料添加成功', url('Product/proctaglist', 'tables=' . $tables . '&sty=' . $sty));
        } else {
          $this->error('类别添加失败，请重新试试吧', url('Product/proctagadd', 'tables=' . $tables . '&sty=' . $sty));
        }
      }
    }
	
    public function proctagmod(){
      $save   = input('post.send', '');
      $tables = input('tables', '');
      $id     = input('id', 0, 'intval');
      if ( $tables == '' ) $this->error('数据表为空，无法获取数据');
      if ( !$id )          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where('Id',$id)->find();
	  if (!$data)          $this->error('无法获取数据');	
      if ($save == '') {
        return $this->fetch('',['title'=>'编辑类别','tables'=>$tables,'data'=>$data]);
      } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where('Id',$id)->update($this->fieldArr(array('domain')));
		  if ($result) {
			$this->success('资料修改成功', url('Product/proctaglist', 'tables=' . $tables . '&sty=' . $data['sty']));
		  } else {
			$this->error('资料修改失败', url('Product/proctagmod', 'tables=' . $tables . '&id=' . $id));
		  }
		}
      }
    }
	
    public function promtaglist(){
      $tables = input('tables', '');
      $sty    = input('sty', 1, 'intval');
      $topic  = input('topic', '');
      $ctag   = input('ctag', 0, 'intval');
	  $where  = '1=1 AND sty=' . $sty;
      if ($topic != '')  $where .= "topic LIKE '%$topic%'";
      if ($ctag != 0)    $where .= ' AND ctag=' . $ctag;
	  $this->assign('infdata',$this->getSelect('proctag',$sty));
      $this->pageDisplay(array('where' => $where, 'tables' => $tables, 'sty' => $sty, 'title' => '产品列表'));
      return view();
    }
	
    public function promtagadd(){
      $tables = input('tables', '');
      $send   = input('post.send', '');
      $sty    = input('sty', 1, 'intval');
      if ( $tables == '' ) $this->error('数据表为空，无法获取数据');
      if ($send == '') {
        return $this->fetch('',['infdata'=>$this->getSelect('proctag',$sty),'title'=>'添加类别','tables'=>$tables,'sty'=>$sty]);
      } else if ($send == '提交') {
        $result = Db::name($tables)->insert($this->fieldArr(array('sty','ctag')));
        if ($result) {
           $this->success('资料添加成功', url('Product/promtaglist', 'tables=' . $tables . '&sty=' . $sty));
        } else {
          $this->error('类别添加失败，请重新试试吧', url('Product/promtagadd', 'tables=' . $tables . '&sty=' . $sty));
        }
      }
    }
	
    public function promtagmod(){
      $save   = input('post.send', '');
      $tables = input('tables', '');
      $sty    = input('sty', 1);
      $id     = input('id', 0, 'intval');
      if ($tables == '') $this->error('数据表为空，无法获取数据'); 
      if (!$id)          $this->error('ID未指定,无法获取任何数据');
	  $data = Db::name($tables)->field('*')->where(array('Id' => $id))->find();
	  if (!$data)        $this->error('无法获取数据');	
      if ($save == '') {
		return $this->fetch('',['infdata'=>$this->getSelect('proctag',$data['sty']),'ctopic'=>gtopic('proctag',$data['ctag']),'title'=>'编辑类别','tables'=>$tables,'data'=>$data]);		
      } else {
		if ($save == '确定修改') {
		  $result = Db::name($tables)->where("Id",$id)->update($this->fieldArr(array('ctag')));
		  if ($result) {
			$this->success('资料修改成功', url('Product/promtaglist', 'tables=' . $tables . '&sty=' . $data['sty']));
		  } else {
			$this->error('资料修改失败', url('Product/promtagmod', 'tables=' . $tables . '&id=' . $id));
		  }
		}
	  }
    }
	
    public function productlist(){
      $tables = input('tables', '');
      $sty    = input('sty', 1, 'intval');
      $topic  = input('topic', '');
      $ctag   = input('ctag', 0, 'intval');
	  $mtag   = input('mtag', 0, 'intval');
	  $where  = '1=1 AND sty=' . $sty;
      if ($topic != '')  $where .= " AND topic LIKE '%$topic%'";
      if ($ctag != 0)    $where .= ' AND ctag=' . $ctag;
      if ($mtag != 0)    $where .= ' AND mtag=' . $mtag;
	  $this->assign('infdata',$this->getSelect('proctag',$sty));
      $this->pageDisplay(array('where' => $where, 'sty' => $sty, 'title' => '产品列表'));
      return view();
	}
	
    public function productadd(){
      $send   = input('post.send', '');
      $tables = input('tables', '');
      $sty    = input('sty', 1, 'intval');
      if ($tables == '') $this->error('数据表为空，无法获取数据'); 
      if ($send == '') {
		$datashow = array();
        $datashow['mdata'] = $this->getSelect('proctag', $sty);
		return $this->fetch('',['dshow'=>$datashow,'upload'=>true,'title'=>'添加产品','date'=>true,'editor'=>true,'tables'=>$tables,'sty'=>$sty]);		
      } else {
        if ($send == '提交') {
          $result = Db::name($tables)->insert($this->fieldArr(array('ctag', 'mtag', 'intro', 'content','title', 'keyword', 'metades', 'date','istop', 'pic', 'sty')));
          if ($result) {
            $this->success('资料添加成功！', url('Product/productlist', 'tables=' . $tables . '&sty=' . $sty));
          } else {
            $this->error('资料添加失败，请重新试试吧', url('Product/productadd', 'tables=' . $tables . '&sty=' . $sty));
          }
        }
      }
    }
	
    public function productmod(){
      $save   = input('post.send', '');
      $tables = input('tables', '');
      $id     = input('id', 0,'intval');
      if ($tables == '') $this->error('数据表为空，无法获取数据');
      if (!$id)          $this->error('ID未指定,无法获取任何数据');
      $data = Db::name($tables)->field('*')->where("Id",$id)->find();
	  if ( !$data )      $this->error('资料不存在，请重新操作！');
	  if ($save == '') {
         $datashow = array();
         $datashow['mdata'] = $this->getSelect('proctag', $data['sty']);
         $datashow['tables'] = $tables;
		 return $this->fetch('',['dshow'=>$datashow,'title'=>'编辑产品','upload'=>true,'date'=>true,'editor'=>true,'tables'=>$tables,'data'=>$data]);	
       } else {
		 if ($save == '确定修改') {
	        $result = Db::name($tables)->where("Id",$id)->update($this->fieldArr(array('ctag', 'mtag', 'intro', 'content','title', 'keyword', 'metades', 'date','istop', 'pic')));
			if ($result) {
			  $this->success('资料修改成功！', url('Product/productlist', 'tables=' . $tables . '&sty=' . $data['sty']));
			} else {
			  $this->error('资料修改失败，请重新试试吧', url('Product/productmod', 'tables=' . $tables . '&id=' . $id));
			}
		 }
      }
    }
	
}