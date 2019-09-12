<?php
namespace app\home\controller;

class Map extends Home{
	
   public function index(){
	 $map          = array();
	 $data         = isset($_GET) ? $_GET : '';
	 $cdata        = $this->conf;
	 $map['name']  = isset($data['name'])  ? $data['name']  : $cdata['companyname'];
	 $map['tel']   = isset($data['tel'])   ? $data['tel']   : $cdata['tel'];
	 $map['email'] = isset($data['email']) ? $data['email'] : $cdata['email'];
	 $map['add']   = isset($data['add'])   ? $data['add']   : $cdata['address'];
	 $map['jcode'] = isset($data['jcode']) ? $data['jcode'] : '0';
	 $map['wcode'] = isset($data['wcode']) ? $data['wcode'] : '0';
	 $map['type']  = isset($data['type'])  ? $data['type']  : 1;
     return $this->fetch('',['map'=>$map,'mark'=>'map']);
   }
	
}
