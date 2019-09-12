<?php
namespace app\home\model;

use think\Model;
use think\Db;

class Menber{
    public function login(){
        $data ='';
        if ( request()->isAjax()){
            $data = array('status'=>1);
        }else{
            $data = array('status'=>1);
            
        }
		return $data;
    }
    public function ckphone($phone){
        if($phone!=''){
            $data = DB::name('menber')->where(['user'=>$phone])->count();
            return $data ==0 ? false : true;
        }else{
            return false;
        }   
    }
    public function ckpassword($phone,$password){
        if($phone!='' && $password){
            $data = DB::name('menber')->field('*')->where(['user'=>$phone])->find();
            return $data['userpass'] != $password ? false : true;
        }else{
            return false;
        }
	}
}