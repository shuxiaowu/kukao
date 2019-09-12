<?php
namespace app\ltadmin\model;

use think\Model;
class Bhtpl{
  
  //获取分类
  public function gettpltype(){
    return [
	         ['id'=>1,'topic'=>'热门'],
	         ['id'=>2,'topic'=>'标题'],
			 ['id'=>3,'topic'=>'正文'],
			 ['id'=>4,'topic'=>'分割线'],
			 ['id'=>5,'topic'=>'问答'],
			 ['id'=>6,'topic'=>'表格'],
			 ['id'=>7,'topic'=>'安排'],
			 ['id'=>8,'topic'=>'其它']
		   ];
  }
  
  //获取tpl
  public function gettpl($type=1) {
	$text = '';
    $tpl = [
	        1 => [
			      ['html'=>' <section style="display:flex;justify-content:center;align-items:flex-start;"><section style="width:25px;flex-shrink:0;padding:5px 0px;background-color:#fff;transform:rotate(0deg);margin-top:15px;"><p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;">多</p>
                        <p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;margin-top:8px;">植</p>
                        <p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;margin-top:8px;">树</p>
                    </section><section style="border:2px solid #1db74e;padding:8px;margin:0px -13px;"><section style="border:1px solid #1db74e;padding:15px 20px 20px;"><p style="margin:0px;text-align:left;font-size:15px;line-height:1.5;">植树节是按照法律规定宣传保护树木，并动员群众参加以植树造林为活动内容的节日。按时间长短可分为植树日、植树周和植树月，共称为国际植树节。提倡通过这种活动，激发人们爱林造林的热情。</p>
                        </section></section><section style="width:25px;flex-shrink:0;padding:5px 0px;background-color:#fff;align-self:flex-end;margin-bottom:15px;"><p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;">广</p>
                        <p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;margin-top:8px;">造</p>
                        <p style="width:25px;height:25px;border-radius:50%;background-color:#1db74e;color:#fff;font-size:14px;margin:0px;text-align:center;line-height:25px;margin-top:8px;">林</p>
                    </section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="width:100%;margin-top:15px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-box-align:center;-webkit-align-items:center;-ms-flex-align:center;align-items:center"><section style="display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:start;-webkit-justify-content:flex-start;-ms-flex-pack:start;justify-content:flex-start"><section style="width: 10px;height: 10px;border-width: 1px;border-style: solid;border-color: rgb(199, 0, 11);-webkit-transform: rotateZ(45deg) translate3d(-1px, 3px, 0px);transform: rotateZ(45deg) translate3d(-1px, 3px, 0px);-webkit-box-sizing: border-box;box-sizing: border-box"></section><section style="height:14px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-orient:vertical;-webkit-box-direction:normal;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:center;-webkit-align-items:center;-ms-flex-align:center;align-items:center"><section style="width:48px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:44px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:40px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:44px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:48px;height:1px;background-color:rgb(199,0,11)"></section></section></section><section style="margin-left:4px;margin-right:4px;font-size: 16px;color: rgb(199, 0, 11);min-width: 1px;font-weight: bold"><p>领 导 致 辞</p></section><section style="display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:start;-webkit-justify-content:flex-start;-ms-flex-pack:start;justify-content:flex-start"><section style="height:14px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;-webkit-box-orient:vertical;-webkit-box-direction:normal;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;-webkit-box-align:center;-webkit-align-items:center;-ms-flex-align:center;align-items:center"><section style="width:48px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:44px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:40px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:44px;height:1px;background-color:rgb(199,0,11)"></section><section style="width:48px;height:1px;background-color:rgb(199,0,11)"></section></section><section style="width: 10px;height: 10px;border-width: 1px;border-style: solid;border-color: rgb(199, 0, 11);-webkit-transform: rotateZ(45deg);-ms-transform: rotate(45deg);transform: rotateZ(45deg);margin-top: 1px;margin-left: 1px;-webkit-box-sizing: border-box;box-sizing: border-box"></section></section></section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="border:0;margin:0 auto;padding:0;text-align:center"><section style="padding:5px 10px;line-height:30px;text-align:center;font-size:14px;background-color:#FFF;border:3px solid #33b86c;display:inline-block"><section style="padding:0;color:#fff;height:30px;width:30px;line-height:30px;text-align:center;font-size:14px;background-color:#33b86c;display:inline-block;border-radius:100%"><p>01</p></section><section style="padding:0 0 0 10px;color:#33b86c;line-height:30px;text-align:center;font-size:14px;border:0;display:inline-block"><p>这里输入标题</p></section></section><section style="padding:0;margin:0 auto;color:#FFF;width:0;height:.4rem;text-align:center;border-top:.4rem solid #33b86c;border-left:.6rem solid #fff;border-right:.6rem solid #fff;border-bottom:0 solid #fff"></section></section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="margin-top:10px;text-align: center"><section style="display:inline-block;min-width:60px"><section style="height:10px;border:1px solid rgb(134,96,69);-webkit-box-sizing: border-box;box-sizing: border-box;border-radius:5px;margin: 0 3px -6px 3px"></section><section style="-webkit-box-align: center;-webkit-align-items: center;-ms-flex-align: center;align-items: center;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;background:#fff;-webkit-transform: rotate(360deg);-ms-transform: rotate(360deg);transform: rotate(360deg)"><section style="width:10px;height:30px;border:1px solid rgb(134,96,69);-webkit-box-sizing: border-box;box-sizing: border-box;border-radius:5px;border-right:none;margin-right:-6px"></section><section style="-webkit-box-flex:1;-webkit-flex:1;-ms-flex:1;flex:1;height:30px;overflow: hidden;border:1px solid rgb(134,96,69);-webkit-box-sizing: border-box;box-sizing: border-box;padding:0 10px;background:#fff;-webkit-transform: rotate(360deg);-ms-transform: rotate(360deg);transform: rotate(360deg);font-size:18px;color:rgb(6,6,6);line-height:28px;min-width: 1px"><p>中国汉族劳动人民创造的传统医学</p></section><section style="width:10px;height:30px;border:1px solid rgb(134,96,69);-webkit-box-sizing: border-box;box-sizing: border-box;border-radius:5px;border-left:none;margin-left:-6px"></section></section><section style="height:10px;border:1px solid rgb(134,96,69);-webkit-box-sizing: border-box;box-sizing: border-box;border-radius:5px;margin:-6px 3px 0 3px"></section></section></section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="border:0;margin:0 0 15px;padding:0"><section style="padding:0;margin:0 auto;text-align:center"><section style="color:#333;background:#fff;font-size:16px;line-height:35px;height:35px;padding:0 10px;margin:0 auto;display:inline-block;letter-spacing:1px"><p>这里输入标题</p></section></section><section style="padding:0;margin:0 auto 15px;text-align:center;width:100%"><section style="padding:0;margin:-22px auto 3px;height:1px;background:#333;width:90%"></section><section style="padding:0;margin:0 auto 3px;height:1px;background:#333;width:85%"></section><section style="padding:0;margin:0 auto;height:1px;background:#333;width:70%"></section></section></section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="margin-top: 20px; margin-bottom: 20px; position: static;"><section style="padding: 10px; display: inline-block; width: 558px; vertical-align: top; border-style: inset; border-width: 10px; border-radius: 0px; border-color: rgb(239, 239, 239); box-shadow: rgb(62, 62, 62) 0px 0px 5px; background-color: rgb(255, 252, 242);"><section class="bhtpl-e"><section style="margin-bottom: 30px; text-align: center; position: static;"><section style="display: inline-block; width: 466.188px; vertical-align: top; box-shadow: rgb(0, 0, 0) 0px 0px 0px;"><section class="bhtpl-e"><section style="padding: 10px; position: static;"><section style="color: rgb(195, 2, 25); font-size: 26px; letter-spacing: 5px; line-height: 1;"><p><strong>荣誉证书</strong></p></section></section></section><section class="bhtpl-e"><section style="position: static;"><section style="font-size: 12px; color: rgb(195, 2, 25);"><p>-CERTIFICATE OF HONOR-</p></section></section></section></section></section></section><section class="bhtpl-e"><section style="text-align: center; position: static;"><section style="display: inline-block; width: 259px; vertical-align: top;"><section class="bhtpl-e"><section style="margin-top: 10px; position: static;"><section style="vertical-align: middle; display: inline-block; width: 181.297px; overflow: hidden !important;"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 1214.3 197" style="vertical-align: middle;" width="100%"><g><g><g><path d="M737.6,129.2H479.3L608.4,0L737.6,129.2z M495.7,122.4h225.5L608.4,9.6L495.7,122.4z" fill="rgb(195,2,25)"></path></g><g><path d="M669.4,129.2H547.5l60.9-60.9L669.4,129.2z M563.9,122.4h89l-44.5-44.5L563.9,122.4z" fill="rgb(195,2,25)"></path></g><g><polygon points="609.3,128.2 604.5,123.3 692.9,34.9 781.4,123.3 776.6,128.2 692.9,44.5" fill="rgb(195,2,25)"></polygon></g><g><path d="M858.1,129.2h-80.6l40.3-40.3L858.1,129.2z M793.9,122.4h47.7l-23.9-23.9L793.9,122.4z" fill="rgb(195,2,25)"></path></g><g><path d="M436.1,129.2h-80.6l40.3-40.3L436.1,129.2z M372,122.4h47.7l-23.9-23.9L372,122.4z" fill="rgb(195,2,25)"></path></g><g><polygon points="605.1,128.2 521.5,44.5 437.8,128.2 433,123.3 521.5,34.9 609.9,123.3" fill="rgb(195,2,25)"></polygon></g><g><g><rect x="775.7" y="122.4" width="223.9" height="6.8" fill="rgb(195,2,25)"></rect></g><g><rect x="214.7" y="122.4" width="223.9" height="6.8" fill="rgb(195,2,25)"></rect></g></g><g><g><g><rect x="875.8" y="99.6" width="73.1" height="6.8" fill="rgb(195,2,25)"></rect></g></g><g><g><rect x="265.4" y="99.6" width="73.1" height="6.8" fill="rgb(195,2,25)"></rect></g></g></g></g><g><rect y="190.2" width="1214.3" height="6.8" fill="rgb(195,2,25)"></rect></g><g><rect x="202.1" y="159.8" width="810.2" height="6.8" fill="rgb(195,2,25)"></rect></g></g></svg></section></section></section><section class="bhtpl-e"><section style="position: static;"><section style="line-height: 1.8; color: rgb(62, 62, 62); letter-spacing: 1px;"><p><strong>谁谁啊</strong></p></section></section></section><section class="bhtpl-e"><section style="margin-bottom: 10px; position: static;"><section style="vertical-align: middle; display: inline-block; width: 181.297px; overflow: hidden !important;"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 1214.3 197" style="vertical-align: middle;" width="100%"><g><g><g><path d="M476.7,67.8H735L605.9,197L476.7,67.8z M718.6,74.6H493.1l112.7,112.7L718.6,74.6z" fill="rgb(195,2,25)"></path></g><g><path d="M544.9,67.8h121.9l-60.9,60.9L544.9,67.8z M650.4,74.6h-89l44.5,44.5L650.4,74.6z" fill="rgb(195,2,25)"></path></g><g><polygon points="605,68.8 609.8,73.6 521.3,162.1 432.9,73.6 437.7,68.8 521.3,152.5" fill="rgb(195,2,25)"></polygon></g><g><path d="M356.2,67.8h80.6l-40.3,40.3L356.2,67.8z M420.3,74.6h-47.7l23.9,23.9L420.3,74.6z" fill="rgb(195,2,25)"></path></g><g><path d="M778.1,67.8h80.6l-40.3,40.3L778.1,67.8z M842.3,74.6h-47.7l23.9,23.9L842.3,74.6z" fill="rgb(195,2,25)"></path></g><g><polygon points="609.1,68.8 692.8,152.5 776.5,68.8 781.3,73.6 692.8,162.1 604.3,73.6" fill="rgb(195,2,25)"></polygon></g><g><g><rect x="214.7" y="67.8" width="223.9" height="6.8" fill="rgb(195,2,25)"></rect></g><g><rect x="775.7" y="67.8" width="223.9" height="6.8" fill="rgb(195,2,25)"></rect></g></g><g><g><g><rect x="265.4" y="90.6" width="73.1" height="6.8" fill="rgb(195,2,25)"></rect></g></g><g><g><rect x="875.8" y="90.6" width="73.1" height="6.8" fill="rgb(195,2,25)"></rect></g></g></g></g><g><rect width="1214.3" height="6.8" fill="rgb(195,2,25)"></rect></g><g><rect x="202.1" y="30.4" width="810.2" height="6.8" fill="rgb(195,2,25)"></rect></g></g></svg></section></section></section></section></section></section><section class="bhtpl-e"><section style="margin-top: 20px; position: static;"><section style="padding-right: 10px; padding-left: 10px; text-align: justify; font-size: 12px;"><p style="white-space: normal;">在本年度（或季度/月）工作中，表现优秀，业绩突出，被评为优秀员工。</p></section></section></section><section class="bhtpl-e"><section style="margin-top: 10px; position: static;"><section style="text-align: justify; font-size: 12px;"><p style="white-space: normal;">特发此证，以资鼓励！</p></section></section></section><section class="bhtpl-e"><section style="position: static;"><section><p><br></p></section></section></section><section class="bhtpl-e"><section style="text-align: center; position: static;"><section style="display: inline-block; width: 466.188px; vertical-align: top; box-shadow: rgb(0, 0, 0) 0px 0px 0px;"><section class="bhtpl-e"><section style="position: static;"><section style="vertical-align: middle; display: inline-block; width: 466.188px; overflow: hidden !important;"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 303.3 4.6" style="vertical-align: middle;" width="100%"><g><g><g><g><path d="M189.5,1.8c-1.4,0-2.7,0-4.1-0.3c-0.6-0.1-1.2-0.2-1.7-0.5c-0.3-0.1-1.5-1.3-1.3-0.4      c-0.4-0.4-1.2-1.2-1-0.1c0.1,0.4,0.6,1,0.6,1.4c0,0.1,0,0.3,0,0.4c0,0.1,0,0.2,0,0.4c0,0.4-0.5,1-0.6,1.3      c-0.2,1.1,0.6,0.3,1-0.2c-0.1,0.9,1.1-0.2,1.3-0.4c0.5-0.2,1.2-0.4,1.7-0.5c1.3-0.3,2.7-0.3,4.1-0.3c2.8,0,5.5-0.1,8.3-0.1      c1.8,0,97.5-0.1,99.1,0.4c0.6,0.2,1.7,0.8,2.4,0.5c0.9-0.4-0.5-0.9-0.8-1.3c0.2-0.4,1.7-0.9,0.8-1.3c-0.6-0.3-1.8,0.3-2.4,0.5      c-1.7,0.5-97.3,0.4-99.1,0.4C195,1.9,192.3,1.8,189.5,1.8z" fill="rgb(195,2,25)"></path></g><g><path d="M303.3,2.3c0,0.4-2,0.8-2.4,0.8c-0.4,0-0.9-0.4-0.9-0.8c0-0.4,0.5-0.8,0.9-0.8      C301.3,1.5,303.3,1.8,303.3,2.3z" fill="rgb(195,2,25)"></path></g></g><g><g><path d="M120,2.8c1.4,0,2.8,0,4.1,0.3c0.6,0.1,1.2,0.2,1.7,0.5c0.3,0.1,1.5,1.3,1.4,0.4      c0.4,0.4,1.2,1.2,1,0.2c-0.1-0.4-0.6-1-0.6-1.4c0-0.1,0-0.3,0-0.4c0-0.1,0-0.2,0-0.3c0-0.5,0.5-1,0.6-1.3c0.2-1.1-0.6-0.3-1,0.1      c0.1-0.9-1.1,0.3-1.4,0.4c-0.5,0.3-1.2,0.4-1.7,0.5c-1.3,0.3-2.7,0.3-4.1,0.3c-2.8,0-5.5,0.1-8.3,0.1C109.8,1.9,8,2,6.4,1.5      C5.8,1.3,4.6,0.6,4,1C3.1,1.4,4.5,1.8,4.8,2.3C4.5,2.7,3.1,3.2,4,3.6c0.6,0.3,1.8-0.3,2.4-0.5C8,2.6,109.8,2.7,111.7,2.7      C114.5,2.7,117.2,2.8,120,2.8z" fill="rgb(195,2,25)"></path></g><g><path d="M0,2.3c0-0.4,2-0.8,2.4-0.8c0.4,0,0.9,0.4,0.9,0.8c0,0.4-0.5,0.8-0.9,0.8C2,3.1,0,2.7,0,2.3z" fill="rgb(195,2,25)"></path></g></g></g><g><path d="M179.9,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C179.4,1.2,179.9,1.7,179.9,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M175.5,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C175,1.2,175.5,1.7,175.5,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M171.1,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C170.6,1.2,171.1,1.7,171.1,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M166.6,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C166.2,1.2,166.6,1.7,166.6,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M162.2,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C161.7,1.2,162.2,1.7,162.2,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M157.8,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C157.3,1.2,157.8,1.7,157.8,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M153.4,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C152.9,1.2,153.4,1.7,153.4,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M149,2.3c0,0.6-0.5,1.1-1.1,1.1s-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1S149,1.7,149,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M144.5,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C144.1,1.2,144.5,1.7,144.5,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M140.1,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C139.7,1.2,140.1,1.7,140.1,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M135.7,2.3c0,0.6-0.5,1.1-1.1,1.1s-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1S135.7,1.7,135.7,2.3z" fill="rgb(195,2,25)"></path></g><g><path d="M131.3,2.3c0,0.6-0.5,1.1-1.1,1.1c-0.6,0-1.1-0.5-1.1-1.1c0-0.6,0.5-1.1,1.1-1.1    C130.8,1.2,131.3,1.7,131.3,2.3z" fill="rgb(195,2,25)"></path></g></g></svg></section></section></section><section class="bhtpl-e"><section style="position: static;"><section style="display: inline-block; vertical-align: top; width: 233.094px;"><section class="bhtpl-e"><section style="position: static;"><section style="text-align: left; font-size: 12px;"><p>xx公司</p></section></section></section></section><section style="display: inline-block; vertical-align: top; width: 233.094px;"><section class="bhtpl-e"><section style="position: static;"><section style="text-align: right; font-size: 12px;"><p>2017年12月31日</p></section></section></section></section></section></section></section></section></section></section></section></section>'],
					['html'=>'<section class="bhtpl-e"><section style="position: static; box-sizing: border-box; border: 0px none; padding: 0px;" data-id="内容198"><section style="margin-bottom: 0.5em;display:inline-block;"><section style="border-right-width: 16px; border-left-width: 0px; border-right-style: solid; border-right-color: rgb(198, 198, 199); border-left-color: rgb(198, 198, 199); height: 10px; width: 10px; float: left; margin-top: 15px; border-bottom-width: 10px !important; border-top-style: solid !important; border-bottom-style: solid !important; border-top-color: transparent !important; border-bottom-color: transparent !important;"></section><section style="padding:1em; border-radius: 1em; line-height: 1.2; font-size: 1em; display: inline-block; color: rgb(70, 70, 72); max-width: 80% !important; background: rgb(198, 198, 199);" class="bhtpl-e"><p style="margin: 0;"><span style="font-family: 微软雅黑, \'Microsoft YaHei\';">你说什么呢，你说什么呢你说什么呢你说什么呢你说什么呢？</span></p></section></section><section style="margin-top:20px;margin-bottom: 0.5em;text-align: right;display:inline-block;"><section style="border-left-width: 16px; border-right-width: 0px; border-left-style: solid; border-left-color: rgb(22, 171, 36); border-right-color: rgb(22, 171, 36); display: inline-block; height: 10px; width: 10px; vertical-align: top; float: right; border-bottom-width: 10px !important; border-top-style: solid !important; border-bottom-style: solid !important; border-top-color: transparent !important; border-bottom-color: transparent !important;"></section><section style="padding:1em; border-radius: 1em; line-height: 1.2; text-align: left; color: rgb(255, 255, 255); font-size: 1em; display: inline-block; margin-top: -15px; max-width: 80% !important; background: rgb(22, 171, 36);" class="bhtpl-e"><p style="text-align:left;"><span style="font-family: 微软雅黑, \'Microsoft YaHei\';">你好啊？</span></p><p style="text-align:left;"><span style="font-family:微软雅黑, Microsoft YaHei">不要改变格式，否则会变形 :)</span></p></section></section><section style="display: block; width: 0; height: 0; clear: both;"></section></section></section>'],
					['html'=>'<section class="KolEditor" style="margin-top:20px;"><section style="background:rgb(43,52,122);padding:35px 10px 20px 10px;text-align: center"><section><section style="display:inline-block;border:1px solid #fff;padding:0 20px;"><section style="background:rgb(43,52,122);padding:0 10px;margin-top:-15px;padding-bottom:10px;"><p class="brush white" style="color:rgb(255,255,255);font-size:16px;line-height:30px;">让心，在阳光下学会舞蹈</p><p class="brush white" style="color:rgb(255,255,255);font-size:16px;line-height:30px;">让灵魂，在痛苦中学会微笑</p></section></section></section><section style="margin-top:10px;"><p class="white brush" style="font-size:14px;color:rgb(255,255,255);">— the dances youve already had —</p></section><section style="height:1px;width:40px;margin:10px auto 0 auto;background:#fff;"></section><section style="height:1px;width:30px;margin:5px auto 5px auto;background:#fff;"></section><section style="height:1px;width:20px;margin:5px auto 5px auto;background:#fff;"></section><section style="height:1px;width:10px;margin:5px auto 5px auto;background:#fff;"></section></section></section>'],
					['html'=>'<section style="display: flex;color: #fff;font-size: 12px;"><section style="width:50%;text-align: right;margin-left: 10px;"><section style="display: inline-block; "><section style="margin-top:60px;"><section style="display: flex; justify-content: center;align-items: center;"><section style="display: inline-block;padding: 10px;border-radius: 15px;background-color: rgb(242,90,41);text-align: justify;width: auto;max-width: 100px;word-break: break-all;"><p>步骤1</p><p>步骤2</p></section><section><section style="display: inline-block;"><section style="display: block;width: 0;height: 0; border: 8px solid transparent;border-left-color: rgb(242,90,41); border-radius:0 0 5px 0;"></section></section></section><section style="background-color: rgb(254,254,254);padding: 3px;border-radius: 50%"><section style="display: inline-block;width: 16px;height: 16px;border: 4px solid rgb(242,90,41);border-radius: 50%;float: right;margin: 2px 0;background-color: rgb(254,254,254);"></section></section></section></section></section><section style="margin-top:60px;"><section style="display: inline-block; "><section style="display: flex;align-items:center;"><section style="display: inline-block;padding: 10px;border-radius: 15px;background-color: rgb(142,198,63);width: auto;max-width: 100px;word-break: break-all;text-align: justify;"><p>步骤2</p><p>步骤2</p></section><section><section style="display: inline-block;"><section style="display: block;width: 0;height: 0; border: 8px solid transparent;border-left-color: rgb(142,198,63);"></section></section></section><section style="display: inline-block;padding: 3px;border-radius: 100%;background-color:rgb(254,254,254);"><section style="display: inline-block;width: 16px;height: 16px;background:rgb(254,254,254);border: 4px solid rgb(142,198,63);border-radius: 50%;margin-top: 2px;"></section></section></section></section></section></section><section style="width: 50%;text-align:left; float:right;margin-left: -20px;overflow: hidden;"><section style="margin-top: 20px;"><section style="display: inline-block; "><section style="display: flex; align-items:center;"><section style="background-color: rgb(254,254,254);padding: 3px;border-radius: 50%"><section style="display: inline-block;width: 15px;height: 15px;border-radius: 50%;float: right;margin: 2px 0;background-color:rgb(132,201,183);"></section></section><section><section style="display: inline-block;"><section style="display: block;width: 0;height: 0; border: 8px solid transparent;border-right-color: rgb(132,201,183);"></section></section></section><section style="display: inline-block;padding: 10px;border-radius: 12px;background-color: rgb(132,201,183);width: auto;max-width: 100px;word-break: break-all;text-align: justify;"><p>步骤3<br></p></section></section></section></section><section style="margin-top: 60px;"><section style="display: inline-block; "><section style="display: flex;align-items:center;"><section style="padding: 3px;border-radius: 50%;background-color: rgb(254,254,254);"><section style="display: inline-block;width: 15px;height: 15px;border:3px solid rgb(39,170,226);border-radius: 50%;float: right;margin-top: 2px;margin-bottom: 2px;background-color: rgb(254,254,254);"></section></section><section><section style="display: inline-block;"><section style="display: block;width: 0;height: 0; border: 8px solid transparent;border-right-color: rgb(39,170,226);"></section></section></section><section style="display: inline-block;padding: 10px;border-radius: 15px;background-color: rgb(39,170,226);width: auto;max-width: 100px;word-break: break-all;text-align: justify;"><p>步骤3</p><p>步骤4</p><p>5000+</p></section></section></section></section></section></section>'],
					['html'=>''],
				 ],
	        2 => [
			      ['html'=>'<section style="margin:0 auto;width:68%">
							<section style="margin:0;clear:both;box-sizing:border-box;padding:0;color:inherit">
								<section style="color:inherit;float:right;width:11px;height:11px!important;background-color:rgba(76,175,80,1);"></section>
								<section style="color:inherit;float:left;width:11px;height:11px!important;background-color:rgba(76,175,80,1);"></section>
							</section>
							<section style="margin:0;padding:10px 0 0;color:inherit;border-color:rgba(76,175,80,1);">
								<section style="color:#c00000;float:right;width:12px;margin-right:-1px;height:11px!important;background-color:rgba(76,175,80,.5);"></section>
								<section style="color:#c00000;float:left;width:12px;margin-left:-1px;height:11px!important;background-color:rgba(76,175,80,.5);"></section>
							</section>
							<section style="margin:0;padding:11px 0 0;color:inherit;border-color:rgba(76,175,80,1);">
								<section style="color:inherit;float:right;width:12px;margin-right:-1px;margin-top:-1px;height:11px!important;background-color:rgba(76,175,80,1);"></section>
								<section style="color:inherit;float:left;width:12px;margin-left:-1px;margin-top:-1px;height:11px!important;background-color:rgba(76,175,80,1);"></section>
							</section>
						</section>
						<section style="margin-top:-1.2em;text-align:center;padding-left:20px;padding-right:20px;font-size:16px;font-weight:bold"> 旅游信息</section>'],
				   ['html'=>'<section style="display:flex;justify-content:center;"><p style="margin:0px;height:36px;border-radius:18px 0px 0px 18px;background-color:#e33328;color:#fff;padding:0px 10px;line-height:36px;">社会保障</p><p style="margin:0px;height:36px;border-radius:0px 18px 18px 0px;border:1px solid #e33328;color:#e33328;padding:0px 10px;line-height:36px;">“老有所养”成网民最大期待</p></section>'],
				   ['html'=>'<section style="padding-left:20px;border:1px solid #64ad0d">
						<section style="font-size:20px; background: #64ad0d;border:0 none;font-family:\'Microsoft Yahei\';font-size:18px;line-height:30px;">
							<span style="background:#fff; color:#64ad0d; display:inline-block; padding:0px 15px 0px 0px;font-weight:bold;">请输入标题</span>
							<span style="background:none repeat scroll 0 0 #fff; display:inline-block; margin-left:0px">&nbsp;</span>
							<span style="background:none repeat scroll 0 0 #fff; display:inline-block; margin-left:0px">&nbsp;</span>
							<span style="background:none repeat scroll 0 0 #fff; display:inline-block; margin-left:0px">&nbsp;</span>
						</section>
					</section>'],
				   ['html'=>'<section class="bhtpl-e">
			<section style="border: none; margin: 5px 0px; padding: 0px 5px; box-sizing: border-box;text-align: center;font-family:\'Microsoft Yahei\';">
				<section style="box-sizing: border-box; color: inherit; border-color: #ebe5d9; padding: 0px; margin: 0px; display: inline-block;">
					<section style="box-sizing: border-box; color: #816d44; padding: 40px 20px; font-size: 16px; text-align: center; border-color:#e0bf7e; margin: 0px; width: 200px; height: 200px; border-radius: 50%; background-color: #ebe5d9;">
						<p style="color: inherit;text-align: center; line-height: 1.5em; border-color: #ebe5d9;">
							<span style="border-color:#ebe5d9; color:#974806; font-size:1.8em; line-height:3em; text-align:justify">请输入标题</span>
						</p>
					</section>
				</section>
			</section>
			<section style="margin-top: -60px;text-align: center;margin-bottom:20px;font-family:\'Microsoft Yahei\';">
				<p style="padding: 5px; display: inline-block;  background-color: #fefefe;line-height:26px;font-size:14px;color:#000;">请输入简单文字描述</p>
			</section>
		</section>'], 
				   ['html'=>'<section class="bhtpl-e">
			<section style="margin:0;font-size: 16px;line-height: 32px; font-weight: bold;">
				<section style="display: inline-block; float: left; width: 32px; height: 32px; border-radius: 32px; vertical-align: top; text-align: center; background-color: #48c0a3; border-color: #48c0a3;">
					<section style="display: table; width: 100%; color: inherit; border-color: #48c0a3;">
						<section class="number" style="display: table-cell;text-indent: 0; vertical-align: middle; font-style: normal; color: #fff; border-color: #48c0a3;">1</section>
					</section>
				</section>
				<section style="margin-left: 36px; font-style: normal; color: #48c0a3; border-color: #48c0a3;">请输入标题</section>
			</section>
		</section>'], 
				   ['html'=>'<section class="bhtpl-e">
			<h2 style="margin: 8px 0px 0px; padding: 0px; font-weight:bold;font-size:16px;line-height:28px;  max-width: 100%;color:#007081; min-height: 32px;border-bottom: 2px solid #007081; text-align: justify;">
				<span class="number" style="background-color:#007081; border-radius:80% 100% 90% 20%; color:#fff; display:block; float:left; line-height:20px; margin:0px 8px 0px 0px; max-width:100%; padding:4px 10px; word-wrap:break-word !important">1</span>
				<strong>请输入标题</strong>
			</h2>
		</section>'], 
				   ['html'=>'<section class="bhtpl-e">
			<section style="border: 3px solid #ff8124; padding: 5px;">
				<section style="border: 1px solid #ff9e57; padding: 15px; text-align: center; color: inherit;">
					<p style="color:inherit; font-size:24px">
						<strong style="color:inherit">
							<span style="color:inherit; font-size:24px">请输入标题</span>
						</strong>
					</p>					
					<p style="color: inherit;">请输入简单文字描述</p>
				</section>
			</section>
		</section>'], 
				   ['html'=>'<section style="border: 0px none rgb(95, 170, 255); margin: 0.5em 0px; clear: both; box-sizing: border-box; padding: 0px; display: block;" class="p_variable_border"><section style="text-align: center; font-size: 1em; font-weight: inherit; text-decoration: inherit; color: rgb(254, 254, 254); border-color: rgb(95, 170, 255); box-sizing: border-box; padding: 0px; margin: 0px; clear: both;" class="p_variable_border p_variable_color"><section style="margin-top: 60px; margin-bottom: -10px; box-sizing: border-box; color: inherit; padding: 0px;" class="p_variable_border p_variable_color"><section style="border-top-width: 2px; border-top-style: solid; width: 100%; border-color: rgb(95, 170, 255); box-sizing: border-box; color: inherit; padding: 0px; margin: 0px;" class="p_variable_border p_variable_color"></section></section><section style="width: 75%; display: inline-block; text-align: center; margin-top: -50px; color: inherit;" class="p_variable_color"><section style="width: 100%; border: 1px solid rgb(95, 170, 255); color: inherit; margin-bottom: 10px; display: inline-block;" class="p_variable_border p_variable_color"><section class="pBrush p_variable_border p_variable_bg p_variable_color" style="padding: 12px; margin: 8px; color: rgb(255, 255, 238); border-color: rgb(203, 224, 249); background-color: rgb(95, 170, 255);"><span style="line-height: 24px; border-color: rgb(95, 170, 255); color: rgb(255, 255, 255); font-size: 20px; padding: 0px; margin: 0px;" class="p_variable_border p_variable_color">适合一句话标题</span></section></section></section></section></section>'], 
				   ['html'=>'<section class="bhtpl-e"><section style="margin: 1em auto 5px;text-align:center;width: 100%;"><section class="96wx-bdtc" style="border-top-style: solid; border-top-width: 2px; border-top-color: rgb(4, 171, 106);"><section style="margin-top: -17px;"><section style="background-color: rgb(255,255,254);display: inline-block;"><section class="96wx-bdlc 96wx-bdrc" style="border-left-style: solid; border-left-width: 1px; border-left-color: rgb(4, 171, 106); border-right-style: solid; border-right-width: 1px; border-right-color: rgb(0, 176, 240); width: 7px; -webkit-transform: rotate(8deg); height: 28px; vertical-align: middle; display: inline-block;"></section><section class="96wx-bdrc" style="border-right-style: solid; border-right-width: 1px; border-right-color: rgb(4, 171, 106); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section><section style="font-size: 18px; height: 28px; padding: 0px 10px; line-height: 28px; display: inline-block; border-right-color: rgb(13, 163, 105); border-left-color: rgb(4, 171, 106);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; font-weight: bold;">文字标题</p></section><section class="96wx-bdlc 96wx-bdrc" style="border-left-style: solid; border-left-width: 1px; border-left-color: rgb(4, 171, 106); border-right-style: solid; border-right-width: 1px; border-right-color: rgb(0, 176, 240); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section><section class="96wx-bdrc" style="border-right-style: solid; border-right-width: 1px; border-right-color: rgb(4, 171, 106); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section> </section></section></section></section></section><p class="icon-con"><i class="iconfont icon-aixin1 collect _82" id="82" data-type="1" alt="收藏"></i></p>'], 
				   ['html'=>'<section class="bhtpl-e"><section style="text-align:center;margin: 0.5em 0;"><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px;border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"><p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">1</span></strong></p></section></section><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"><p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">5</span></strong></p></section></section><section style="margin: 2px;border:none;padding:0px 0px 3px; width:20px;display:inline-block;"><p style="color: inherit; line-height: 1.6em;"><span style="font-size: 22px;">:</span></p></section><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"><p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">1</span></strong></p></section></section><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"><p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">2</span></strong></p></section></section><section style="margin: 2px;border:none;padding:0px 0px 4px; width:20px;display:inline-block;"><p style="color: inherit; line-height: 1.6em;"><span style="font-size: 22px;">:</span></p></section><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"> <p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">3</span></strong></p></section> </section><section class="96wx-bdc" style="margin: 2px; border: 1px solid rgb(237, 201, 33); padding: 0px 0px 3px; display: inline-block; border-top-left-radius: 8px; border-top-right-radius: 8px; border-bottom-right-radius: 8px; border-bottom-left-radius: 8px;"><section class="96wx-bdbc" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(237, 201, 33); padding: 0px 5px; border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;"><p style="color: inherit; line-height: 1.6em;"><strong><span style="font-size: 22px;">0</span></strong></p></section></section></section></section>'], 
				   ['html'=>''], 
				   ['html'=>''], 
				   ['html'=>''], 
			 ],
			 3 => [
			   ['html'=>'<section style="font-size:14px ;margin: 5px auto;white-space: normal;">
			<section style="margin:10px 0;padding:0;border:3px solid rgba(76,175,80,1);box-sizing:border-box;width:100%;display:inline-block;font-family:微软雅黑;background-color:#fff">
				<section style="margin-top:-1px;margin-right:-1px;padding:0;float:right;width:0;height:0;border-top:2em solid rgba(76,175,80,1);border-left:2em solid transparent;border-right:0 solid transparent"></section>
				<section style="margin:0;padding:0;clear:both;box-sizing:border-box">
					<section style="margin:0;padding:0 10px;box-sizing:border-box">
						<p style="font-size:14px;color:#666;text-align:justify;word-wrap:break-word!important;line-height:30px;text-indent:2em">
							<span style="color:inherit">'.$text.'</span>
						</p>
					</section>
				</section>
				<section style="margin-left:-1px;margin-bottom:-1px;padding:0;float:left;clear:none;width:0;height:0;border-bottom:2em solid rgba(76,175,80,1);border-left:0 solid transparent;border-right:2em solid transparent"></section>
			</section>
		</section>'],
		        ['html'=>'<section style="font-size:14px;font-family:"Microsoft YaHei";margin: 5px auto;white-space: normal;">
			<section style="margin:10px 0;padding:0;box-sizing:border-box">
				<section style="margin:0;padding:0;box-sizing:border-box;max-width:100%">
					<section style="margin:0;padding:0;max-width:100%;width:8px;height:8px;border-top:2px solid rgba(76,175,80,1);float:left;border-left:2px solid rgba(76,175,80,1)"></section>
					<section style="margin:0;padding:0;max-width:100%;width:8px;height:8px;border-top:2px solid rgba(76,175,80,1);float:right;border-right:2px solid rgba(76,175,80,1)"></section>
				</section>
				<section style="margin:0 8px;padding:10px;border:1px solid rgba(76,175,80,1);clear:both;max-width:100%">
					<section style="margin:0;padding:0;color:#000">
					<p style="font-size:14px;color:inherit;text-align:justify;line-height:30px;text-indent:2em">
						<span style="color:inherit">'.$text.'</span>
					</p>
				</section>
			</section>
			<section style="margin:0;padding:0;box-sizing:border-box;max-width:100%">
				<section style="margin:0;padding:0;width:8px;height:8px;border-bottom:2px solid rgba(76,175,80,1;float:left;border-left:2px solid rgba(76,175,80,1)"></section>
				<section style="margin:0;padding:0;width:8px;height:8px;border-bottom:2px solid rgba(76,175,80,1;float:right;clear:none;border-right:2px solid rgba(76,175,80,1)"></section>
			</section>
		</section>
		</section>'],
				['html'=>'<section class="bhtpl-e">
			<fieldset style="border: 0px; margin: 5px 0px; box-sizing: border-box; padding: 0px;">
				<section style="height: 1em; box-sizing: border-box;">
					<section style="height: 100%; width: 1.5em; float: left; border-top-width: 0.4em; border-top-style: solid; border-color: #a4bcff; border-left-width: 0.4em; border-left-style: solid; box-sizing: border-box;">
					</section>
					<section style="display: inline-block; color: transparent; clear: both; box-sizing: border-box;">
					</section>
				</section>
				<section style="margin: -0.8em 0.1em -0.8em 0.2em; padding: 0.8em; border: 1px solid #5883ff; box-sizing: border-box;">
					<section style="color: #5883ff; font-size: 1em; line-height: 1.4; word-break: break-all; word-wrap: break-word;font-family:\'Microsoft Yahei\';font-size:14px;">'.$text.'</section>
				</section>
				<section style="height: 1em; box-sizing: border-box;">
					<section style="height: 100%; width: 1.5em; float: right; border-bottom-width: 0.4em; border-bottom-style: solid; border-color: #a4bcff; border-right-width: 0.4em; border-right-style: solid; box-sizing: border-box;">
					</section>
				</section>
			</fieldset>
		</section>'],
				['html'=>'<section class="bhtpl-e">
			<fieldset style="margin:0px; padding: 5px; border: 1px solid #ccc;color: #3e3e3e; font-family: Microsoft Yahei; line-height: 25px;background-color: #f8f7f5;">
				<legend style="padding: 0px;margin: 0px; line-height: 1.8em;">
					<strong style="color: #595959; font-family: Microsoft Yahei; font-size: 18px; line-height:30px; text-align: center;">
						<span style="color:#ec7d00;padding-left:10px;padding-right:10px;">请输入标题</span>
					</strong>
				</legend>
				<p style="margin: 0px;padding:0 7px 6px 7px;font-size:14px;">'.$text.'</p>
			</fieldset>
		</section>'],
				['html'=>'<section class="bhtpl-e">
			<section style="padding: 0px 8px; border-left-width: 3px; border-left-style: solid; border-color:#8989ca; font-size: 22px; font-weight: inherit; text-align: inherit; text-decoration: inherit; box-sizing: border-box;font-family:\'Microsoft Yahei\';">
				<section style="line-height: 1.4; box-sizing: border-box; color: inherit;">
					<section style="border-color: #757576; color:#8989ca; font-size: 20px;">请输入标题</section>
				</section>
				<section style="color:#757576; line-height: 1.4; margin-top: 5px; padding-left: 3px; font-size: 14px; font-weight: inherit; text-align: inherit; text-decoration: inherit; box-sizing: border-box; border-color: #757576;">
					<p style="border-color: #757576; color: inherit; font-size: 14px;">'.$text.'</p>
				</section>
			</section>
		</section>'],
				['html'=>'<section class="bhtpl-e"><fieldset style="border: 0px; margin: 5px 0px; box-sizing: border-box; padding: 0px;"><section style="height: 1em; box-sizing: border-box;"><section style="height: 100%; width: 1.5em; float: left; border-top-width: 0.4em; border-top-style: solid; border-color: #f96e57; border-left-width: 0.4em; border-left-style: solid; box-sizing: border-box;"></section><section style="height: 100%; width: 1.5em; float: right; border-top-width: 0.4em; border-top-style: solid; border-color:#f96e57; border-right-width: 0.4em; border-right-style: solid; box-sizing: border-box;"></section><section style="display: inline-block; color: transparent; clear: both; box-sizing: border-box;"></section></section><section style="margin: -0.8em 0.1em -0.8em 0.2em; padding: 0.8em; border: 1px solid r#f96e57; border-radius: 0.3em; box-sizing: border-box;"><section placeholder="四角宽边框的样式" style="color: #333; font-size: 1em; line-height: 1.4; word-break: break-all; word-wrap: break-word;" class="wweibrush">'.$text.'</section></section><section style="height: 1em; box-sizing: border-box;"><section style="height: 100%; width: 1.5em; float: left; border-bottom-width: 0.4em; border-bottom-style: solid; border-color: #f96e57; border-left-width: 0.4em; border-left-style: solid; box-sizing: border-box;"></section><section style="height: 100%; width: 1.5em; float: right; border-bottom-width: 0.4em; border-bottom-style: solid; border-color: #f96e57; border-right-width: 0.4em; border-right-style: solid; box-sizing: border-box;"></section></section></fieldset></section>'],
				['html'=>'<section class="bhtpl-e"><fieldset style="margin: 0;margin-left:10px;margin-top:10px; padding: 0px; border: 0px #ffb3a7; border-image-source: none; max-width: 100%; box-sizing: border-box; color:#3e3e3e; font-size: 16px; line-height: 25px; word-wrap: break-word !important;"><section style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box; line-height: 1.4; margin-left: -0.5em;"><section style="max-width: 100%; box-sizing: border-box; border-color:#000; padding: 3px 8px; border-radius: 4px;color: #a71700; font-size: 1em;display: inline-block; -webkit-transform: rotateZ(-10deg);transform: rotate(-10deg);transform-origin: left center 0; -webkit-transform-origin: 0% 100%; word-wrap: break-word !important; background-color: #ffb3a7;"><span style="color:#fff">请输入标题</span></section></section><section class="wweibrush" style="max-width: 100%; box-sizing: border-box; padding: 22px 16px 16px; border: 1px solid #ffb3a7;color: #000; font-size: 14px;margin-top: -24px;"><p style="line-height:24px;"><span style="color:#595959; font-size:14px">'.$text.'</span></p></section></fieldset></section>'],
				['html'=>'<section class="bhtpl-e">
			<blockquote style="margin: 0px; padding: 10px; border: 6px double #63a9bc; color: #444; font-family: Microsoft Yahei; font-size:14px;">
				<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px;text-align:justify;text-justify:inter-ideograph;color:#646464;">'.$text.'</p>
			</blockquote>
		</section>'],
				['html'=>'<section style="margin-top: 20px;">
			<fieldset style="margin: 20px 0px 0px 10px; padding: 0px; border: 0px; max-width: 100%; color: rgb(62, 62, 62); font-family: 微软雅黑; line-height: 25px; white-space: normal; word-wrap: break-word !important; box-sizing: border-box !important; background-color: rgb(255, 255, 255);">
				<section style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; margin-left: -0.5em; line-height: 1.4em;">
					<section style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; display: inline-block; padding: 0.2em 0.5em; border-top-left-radius: 0.3em; border-top-right-radius: 0.3em; border-bottom-right-radius: 0.3em; border-bottom-left-radius: 0.3em; color: white; font-size: 0.8em; text-align: center; -webkit-transform: rotateZ(-10deg); -webkit-transform-origin: 0% 100%; background-color:rgba(76,175,80,1);">公司介绍</section>
				</section>
				<section style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; margin-top: -1.5em; border: 1px solid rgba(76,175,80,1); font-size: 1em;">
					<section style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; padding: 1.4em 1em 1em;">
						<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 1em; line-height: 1.2; font-family: inherit; text-align: inherit; text-decoration: inherit; color: rgb(253, 176, 0);"></span>
						<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 14px; line-height: 1.2; font-family: inherit; text-align: inherit; text-decoration: inherit; color: #666;">'.$text.'</span>
					</section>
				</section>
			</fieldset>
		</section>'],
				['html'=>'<section class="bhtpl-e"><section style="display:flex;align-items:center;margin:8px 0px;"><section style="flex-shrink:0;background-color:#fff;padding:3px;border:1px dashed #03b7f3;box-sizing:border-box;height:55px;width:55px;border-radius:50%;margin-right:15px;"><p style="width:100%;height:100%;line-height:49px;background-color:#03b7f3;border-radius:50%;margin:0px;text-align:center;font-size:18px;color:#fff;">教育</p>
                    </section><section><p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">家庭教育是启蒙和引领，而不是结果论成败</a></p>
                        <p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">一字千金！ 2017年触动教育圈的５封信！</a></p>
                    </section></section><section style="display:flex;align-items:center;margin: 8px 0px;"><section style="flex-shrink:0;background-color:#fff;padding:3px;border:1px dashed #03b7f3;box-sizing:border-box;height:55px;width:55px;border-radius:50%;margin-right:15px;"><p style="width:100%;height:100%;line-height:49px;background-color:#03b7f3;border-radius:50%;margin:0px;text-align:center;font-size:18px;color:#fff;">财经</p>
                    </section><section><p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">天宸说金融 | 预测2018年金融市场的大事件</a></p>
                        <p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">我们炒外汇具备哪些条件更利于成功？</a></p>
                    </section></section><section style="display:flex;align-items:center;margin: 8px 0px;"><section style="flex-shrink:0;background-color:#fff;padding:3px;border:1px dashed #03b7f3;box-sizing:border-box;height:55px;width:55px;border-radius:50%;margin-right:15px;"><p style="width:100%;height:100%;line-height:49px;background-color:#03b7f3;border-radius:50%;margin:0px;text-align:center;font-size:18px;color:#fff;">旅游</p>
                    </section><section><p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">土耳其轻奢4飞8天</a></p>
                        <p style="margin:5px 0px;"><a style="font-size:14px;color:#00ade7;text-decoration:underline;" href="##">云中漫步∶昆明 - 大理 - 丽江双飞六日游</a></p>
                    </section></section></section>'],
				['html'=>'<section class="bhtpl-e"><section style="display:flex;justify-content:center;"><p style="margin:0px;text-align:center;color:#fff;height:35px;line-height:35px;border-radius:5px;background-color:#36aeea;font-size:18px;padding:0px 15px;text-align:center;">文章推荐</p>
                </section><section style="border-top:2px solid #36aeea;border-bottom:2px solid #36aeea;padding:30px 0px 20px;margin-top:-18px;"><section style="display:flex;align-items:center;"><section style="width:22px;height:22px;background-image:url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/104448c826ab38e17092dc59eb9ca90617c26e.png);background-repeat:no-repeat;background-size:100% auto;flex-shrink:0;"><p style="margin:0px auto;text-align:center;line-height:22px;color:#fff;font-size:16px;">1</p>
                        </section><p style="margin:0px;font-size:18px;line-height:1;color:#36aeea;margin-left:10px;">怎样使用领库编辑器</p>
                    </section><section style="display:flex;align-items:center;margin-top:10px;"><section style="width:22px;height:22px;background-image:url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/1044483430aa8101836ebad8c181c65b83d09a.png);background-repeat:no-repeat;background-size:100% auto;flex-shrink:0;"><p style="margin:0px auto;text-align:center;line-height:22px;color:#fff;font-size:16px;">2</p>
                        </section><p style="margin:0px;font-size:18px;line-height:1;color:#36aeea;margin-left:10px;">领库编辑器与135编辑器对比</p>
                    </section><section style="display:flex;align-items:center;margin-top:10px;"><section style="width:22px;height:22px;background-image:url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/10444890fdec70d7d14c15721dd9ea1992f805.png);background-repeat:no-repeat;background-size:100% auto;flex-shrink:0;"><p style="margin:0px auto;text-align:center;line-height:22px;color:#fff;font-size:16px;">3</p>
                        </section><p style="margin:0px;font-size:18px;line-height:1;color:#36aeea;margin-left:10px;">领库编辑器的优点</p>
                    </section><section style="display:flex;align-items:center;margin-top:10px;"><section style="width:22px;height:22px;background-image:url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/104448fe8f93f2dfed1f4c72051265a4ebea21.png);background-repeat:no-repeat;background-size:100% auto;flex-shrink:0;"><p style="margin:0px auto;text-align:center;line-height:22px;color:#fff;font-size:16px;">4</p>
                        </section><p style="margin:0px;font-size:18px;line-height:1;color:#36aeea;margin-left:10px;">领库编辑器是宇宙第一编辑器</p>
                    </section><section style="display:flex;align-items:center;margin-top:10px;"><section style="width:22px;height:22px;background-image:url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/1044485ae73e5222d7fa13626c0f9e22c4681b.png);background-repeat:no-repeat;background-size:100% auto;flex-shrink:0;"><p style="margin:0px auto;text-align:center;line-height:22px;color:#fff;font-size:16px;">5</p>
                        </section><p style="margin:0px;font-size:18px;line-height:1;color:#36aeea;margin-left:10px;">领库编辑器的优缺点</p>
                    </section></section></section>'],
				['html'=>'<section class="bhtpl-e"><section><section style="display:flex;align-items:center;margin-bottom:8px;"><p style="width:100px;text-align:right;font-size:16px;margin:0px;flex-shrink:0;">第一阶段</p>
                        <section style="width:40px;margin:0px 10px;flex-shrink:0;"><img src="http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/150723ef622c81186a0c17579984d7adc81f9b.png"></section><p style="text-align:center;font-size:16px;margin:0px;flex-shrink:1;line-height:35px;color:#fff;background-color:#ffd174;border-radius:0px 0px 10px 0px;min-width:150px;padding:0px 15px;">销售额30万</p>
                    </section><section style="display:flex;align-items:center;margin-bottom:8px;"><p style="width:100px;text-align:right;font-size:16px;margin:0px;flex-shrink:0;">第二阶段</p>
                        <section style="width:40px;margin:0px 10px;flex-shrink:0;"><img src="http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/1507231c8811b96a962a17761b738b260619e4.png"></section><p style="text-align:center;font-size:16px;margin:0px;flex-shrink:1;line-height:35px;color:#fff;background-color:#ffd174;border-radius:0px 0px 10px 0px;min-width:150px;padding:0px 15px;">销售额60万</p>
                    </section><section style="display:flex;align-items:center;margin-bottom:8px;"><p style="width:100px;text-align:right;font-size:16px;margin:0px;flex-shrink:0;">第三阶段</p>
                        <section style="width:40px;margin:0px 10px;flex-shrink:0;"><img src="http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/1507237da54d997a3b433e683be6a63c1b7f4a.png"></section><p style="text-align:center;font-size:16px;margin:0px;flex-shrink:1;line-height:35px;color:#fff;background-color:#ffd174;border-radius:0px 0px 10px 0px;min-width:150px;padding:0px 15px;">销售额100万</p>
                    </section></section></section>'],
				['html'=>'<section class="bhtpl-e"><section style="max-width: 360px !important;margin: 0px auto;text-align: center;"><section style="display: flex;margin: 0px auto;text-align: center;justify-content: space-around;"><section style="background-image: url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/170032769e762551acfcd35e88ab4f6ac358e7.png);background-repeat: no-repeat;background-size: 100% auto;width: 140px;height:65px;line-height: 65px;box-sizing: border-box;padding: 5px;"><section style="border:1px solid #fff;display: flex;height: 55px;"><p style="color: #fff;font-size: 23px;margin: 0px;line-height: 50px;"><span style="font-size: 14px;">￥</span>50</p>
								<section style="padding-top: 10px;padding-left: 2px;"><p style="margin: 0px auto;text-align: center;color: #fff;font-size: 14px;line-height: 18px;">优惠劵</p>
									<p style="margin: 0px auto;text-align: center;color: #fff;font-size: 12px;line-height: 18px;letter-spacing: -2px;">仅限11月11日使用</p>
								</section></section></section><section style="background-image: url(http://kol-statics.oss-cn-beijing.aliyuncs.com/editor/170032e39c2a6d9528be82d1300f200b8eb986.png);background-repeat: no-repeat;background-size: 100% auto;width: 140px;height:65px;line-height: 65px;box-sizing: border-box;padding: 5px;"><section style="border:1px solid #fff;display: flex;height: 55px;"><p style="color: #fff;font-size: 23px;margin: 0px;line-height: 50px;"><span style="font-size: 14px;">￥</span>50</p>
								<section style="padding-top: 10px;padding-left: 2px;"><p style="margin: 0px auto;text-align: center;color: #fff;font-size: 14px;line-height: 18px;">优惠劵</p>
									<p style="margin: 0px auto;text-align: center;color: #fff;font-size: 12px;line-height: 18px;letter-spacing: -2px;">仅限11月11日使用</p>
								</section></section></section></section></section></section>'],
				['html'=>'<section><section style="padding:15px 25px;border:1px solid rgb(37,37,37);width: 90%!important;margin:0 auto;"><section class="active" style="width:30px;height:30px;background:#FFF;text-align: center;line-height: 30px;margin-left: -40px;margin-top: -24px;font-size: 24px;float: left;color:rgb(37,37,37);">❈</section><section class="active brush" style="font-size:14px;color:rgb(37,37,37);"><p>'.$text.'&nbsp;&nbsp;&nbsp;&nbsp;——百恒</p></section><section class="active" style="width:30px;height:30px;background:#FFF;text-align: center;line-height: 30px;margin-right: -40px;margin-top: 14px;font-size: 24px;float: right;color:rgb(37,37,37);">❈</section></section></section>'],
				['html'=>'<section class="bhtpl-e" style="margin-top:20px;"><section style="text-align:center;margin-bottom:20px;"><section class="white" style="padding-right: 15px; padding-left: 15px; height: 30px; line-height:30px; background-color:#f05454;  display: inline-block; border-top-left-radius: 0px; border-top-right-radius: 0px; border-bottom-right-radius: 10px; border-bottom-left-radius: 10px; "><p class="brush title" style="font-weight: bold;font-size: 18px;color: rgb(255, 255, 255);min-width:1px;">领库编辑器</p></section></section><section class="add" style="margin-top: -20px; margin-right: 10px; margin-left: 10px; padding-top: 18px; padding-bottom: 18px; color: rgb(51, 120, 155); border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom-right-radius: 0px; border-bottom-left-radius: 0px;"><section style="margin-bottom:20px;"><section style="text-align:center; line-height: 1.8em;margin:10px;width:30px; height: 30px; background-color: #f05454; border-radius: 50%;display: inline-block;"><p class="white add-count" style="color: rgb(255, 255, 255);font-size:16px;min-width:1px;">1</p></section><section style="text-align: center; line-height: 1.8em; display: inline-block;"><p class="active brush" style="color:#f05454;font-size:16px;min-width:1px;">点击我出现虚线框......</p></section><section style="margin-top:5px; padding-right: 10px; padding-left: 20px;"><p class="active brush" style="color:rgb(121,121,121); line-height:1.5em; font-size:14px;min-width:1px;">在最美的年华，遇到一个爱你的人，纵使刹那盛开，瞬间凋零，以一世痴念，守一场心灵的地老天荒，何尝不是一种无以伦比的幸福？</p></section></section><section style="margin-bottom:20px;"><section style="text-align:center; line-height: 1.8em;margin:10px;width:30px; height: 30px; background-color: #f05454; border-radius: 50%;display: inline-block;"><p class="white add-count" style="color: rgb(255, 255, 255);font-size:16px;min-width:1px;">2</p></section><section style="text-align: center; line-height: 1.8em; display: inline-block;"><p class="active brush" style="color:#f05454;font-size:16px;min-width:1px;">颜色也可以改变......</p></section><section style="margin-top: 5px; padding-right: 10px; padding-left: 20px;"><p class="active brush" style="color:rgb(121,121,121); line-height:1.5em; font-size:14px;min-width:1px;">在最美的年华，遇到一个爱你的人，纵使刹那盛开，瞬间凋零，以一世痴念，守一场心灵的地老天荒，何尝不是一种无以伦比的幸福？</p></section></section></section></section>'],
				['html'=>'<section class="bhtpl-e" style="margin-top:20px;"><section style="color: rgb(255, 255, 255); border: 1px solid rgb(252, 180, 43);"><section style="clear: both; color: inherit;"><section style="color: inherit; float: right; width: 11px; margin-top: -1px; border: 1px solid rgb(252, 180, 43); margin-right: 10px; height: 11px !important;"></section><section style="color: inherit; float: right; width: 11px; margin-top: -1px; border: 1px solid rgb(252, 180, 43); margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; margin-top: -1px; border: 1px solid rgb(252, 180, 43); margin-left: 10px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; margin-top: -1px; border: 1px solid rgb(252, 180, 43); margin-left: -1px; height: 11px !important;"></section></section><section style="padding-top: 10px;color: inherit;border-color: rgb(252, 180, 43);"><section style="color: inherit; float: right; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: right; width: 11px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-left: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; border: 1px solid rgb(252, 180, 43); margin-left: -1px; margin-top: -1px; height: 11px !important;"></section></section><section style="padding-top: 10px; color: inherit; border-color: rgb(252, 180, 43);"><section style="color: inherit; float: right; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-left: -1px; height: 11px !important;"></section><section style="padding:10px 20px;text-align: center; "><p class="active brush" style="color: rgb(121, 121, 121); line-height:1.75em;font-size:14px;min-width:1px;">人的一生相聚亦难<span style="line-height: 1.75em;">别亦难，并不是心心相映的两个人就一定会在一起，之间总是会有想不到的阻隔，让人欲罢不能。</span></p></section></section><section style="color: inherit; border-color: rgb(252, 180, 43);"><section style="color: inherit; float: right; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-left: -1px; height: 11px !important;"></section></section><section style="padding-top: 10px; color: inherit; border-color: rgb(252, 180, 43);"><section style="color: inherit; float: right; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: right; width: 11px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-left: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; border: 1px solid rgb(252, 180, 43); margin-left: -1px; margin-top: -1px; height: 11px !important;"></section></section><section style="margin-bottom: -1px; padding-top: 10px; color: inherit; border-color: rgb(252, 180, 43);"><section style="color: inherit; float: right; width: 12px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: right; width: 11px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: right; width: 11px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-right: -1px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; border: 1px solid rgb(252, 180, 43); margin-top: -1px; margin-left: 10px; height: 11px !important;"></section><section style="color: inherit; float: left; width: 11px; border: 1px solid rgb(252, 180, 43); margin-left: -1px; margin-top: -1px; height: 11px !important;"></section><section style="color: inherit; width: 12px; border: 1px solid rgb(252, 180, 43); margin-left: -1px; margin-top: -1px; height: 11px !important;"></section></section></section></section>'],
				['html'=>'<section class="KolEditor" style="font-family: Arial; border: 0px none; padding: 0px; color: #319369;"><section style="margin-top: 10px; margin-bottom: 10px; position: static; box-sizing: border-box;"><section style="padding-bottom: 1.2em; box-sizing: border-box;"><section style="display: inline-block; vertical-align: top; line-height: 1em; height: 1em; margin-top: -0.5em; box-sizing: border-box;"><span style="display: inline-block; vertical-align: top; font-size: 80px; line-height: 1em; color: #C0C8D1; box-sizing: border-box;">“</span><section style="width: 4em; border-bottom: 1px solid rgb(192, 200, 209); display: inline-block; vertical-align: middle; margin-top: 1.6em; margin-left: -0.6em; box-sizing: border-box;"></section></section><section style="margin-top: -0.5em;padding: 10px 2em;box-sizing: border-box;"><p>你的人生永远不会辜负你的。那些转错的弯，那些走错的路，那些流下的泪水，那些滴下的汗水，那些留下的伤痕，全都让你成为独一无二的自己。—— 朱学恒</p></section><section style="display: inline-block; height: 1em; float: right; line-height: 1; box-sizing: border-box;"><section style="display: inline-block; vertical-align: top; width: 4em; border-bottom: 1px solid rgb(192, 200, 209); box-sizing: border-box;"></section><span style="display: inline-block; vertical-align: top; font-size: 80px; margin-top: -0.11em; margin-left: -0.1em; color: #C0C8D1; box-sizing: border-box;">”</span></section></section></section></section>'],
				['html'=>'<section class="KolEditor" style="font-family: Arial; border: 0px none; padding: 0px; color: #319369;"><section class="领库brush layout" style="    padding: 1.5em;
    margin: 10px auto;    
    background: #fff;   
    -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 60px rgba(0, 0, 0, 0.1) inset; 
    -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;  box-shadow: 0 15px 10px -10px rgba(0, 0, 0, 0.5), 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;"><p>永远不要认为我们可以逃避， </p>
<br><p>我们的每一步都决定着最后的结局， </p>
<br><p>我们的脚步正在走向我们自己选定的终点。 </p>
<br><p>Do not ever think about that we can escape , </p>
<br><p>our every each step determine the final outcome, </p>
<br><p>our foot steps are moving towards the end of own chosen target.</p></section></section>'],
				['html'=>'<section class="Powered-by-KolEditor V5" style="position: static; box-sizing: border-box;" powered-by="KolEditor.us"><section class="" style="margin: 0.5em 0px; text-align: right; position: static; box-sizing: border-box;"><section class="" style="display: inline-block; vertical-align: middle; background-color: rgb(249, 110, 87); padding: 8px; border-radius: 0.5em; max-width: 90% !important; box-sizing: border-box;"><section class="Powered-by-KolEditor V5" style="box-sizing: border-box;" powered-by="KolEditor.us"><section class="" style="position: static; box-sizing: border-box;"><section class="" style="text-align: left; color: rgb(255, 255, 255); box-sizing: border-box;"><section style="box-sizing: border-box;">输入文字输入文字</section></section></section></section></section><section class="" style="width: 0px; border-left: 10px solid rgb(249, 110, 87); display: inline-block; margin-top: 1em; vertical-align: top; border-top: 6px solid transparent !important; border-bottom: 6px solid transparent !important; box-sizing: border-box;"></section></section></section>'],
				['html'=>'<section class="bhtpl-e"><section style="margin:10px 0;padding:0"><section style="margin-left:20px;margin-bottom:-8px;padding:0;transform:rotate(0);-webkit-transform:rotate(0);-moz-transform:rotate(0);-ms-transform:rotate(0);-o-transform:rotate(0)"><section class="96wx-bdc" style="margin: 0px; padding: 0px; width: 15px; height: 15px; border-width: 2px 2px 0px 0px; border-style: solid; border-color: rgb(95, 170, 255); transform: rotate(-45deg); background-color: rgb(255, 255, 255);"></section></section><section class="96wx-bdc" style="margin-right: auto; margin-bottom: -2px; margin-left: auto; padding: 10px; border-radius: 5px; border: 2px solid rgb(95, 170, 255); border-image-source: none; color: inherit;"><p style="font-size:14px;color:#3c3c3c;word-wrap:break-word;line-height:30px;text-indent:2em;text-align:justify"><span style="color:inherit">在这里输入你的内容，注意不要用退格键把所有文字删除，请保留一个或者用鼠标选取后直接输入，防止格式错乱。</span></p></section></section></section>'],
				['html'=>'<section class="bhtpl-e"><section style="box-sizing:border-box;font-family:微软雅黑"><section style="margin:0 30px;box-sizing:border-box;transform:rotate(0);-moz-transform:rotate(0);-ms-transform:rotate(0);-o-transform:rotate(0);-webkit-transform:rotate(0)"><section style="margin-bottom:-38px;padding:0;display:inline-block;width:100%;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; border-right-width: 20px; border-right-style: solid; border-right-color: rgb(95, 170, 255); border-top-width: 10px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 10px; border-bottom-style: solid; border-bottom-color: transparent; height: 0px; width: 0px; float: left;"></section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; border-left-width: 20px; border-left-style: solid; border-left-color: rgb(95, 170, 255); border-top-width: 10px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 10px; border-bottom-style: solid; border-bottom-color: transparent; height: 0px; width: 0px; float: right; clear: none;"></section></section><section class="96wx-bgc" style="margin: 0px 20px; padding: 0px 10px; height: 50px; box-sizing: border-box; border-radius: 6px; font-size: 18px; color: rgb(255, 255, 255); text-align: center; word-wrap: break-word; background-color: rgb(95, 170, 255);"><section style="margin:0;padding:0;display:inline-block"><section style="margin:0;padding:0;height:50px;display:table-cell;vertical-align:middle;text-align:center"><strong><span style="color:inherit">请输入标题</span></strong></section></section></section></section><section style="margin-top:-30px;padding:50px 10px 20px;border:4px solid #c8c8c8;border-radius:10px"><section class="96wx-color" style="padding: 0px 10px; text-indent: 2em; line-height: 30px; color: rgb(95, 170, 255);"><span style="color:inherit;font-size:14px">在这里输入你的内容，注意不要用退格键把所有文字删除，请保留一个或者用鼠标选取后直接输入，防止格式错乱。</span></section></section></section></section>'],
				['html'=>''],
				['html'=>''],
				['html'=>''],
				['html'=>''],
				['html'=>''],
			 ], 
			 4 => [
			   ['html'=>'<section style="background-color: none;border:none;border-style: none;margin:0px auto 0;background: none;"><section style="height: 0px;border-bottom: solid 1px #000000;"></section></section>'],
			   ['html'=>'<section style="background-color: none;border:none;border-style: none;margin:0px auto 0;background: none;"><section style="height: 0px;border-bottom: dotted 2px #000000;"></section></section>'],
			   ['html'=>'<section style="border:none;margin: 0.5em 0.3em">
			<section style="border-color: #000; background-color: transparent !important;">
				<section style="display: inline-block; float: left; width: 45%; margin-top: 0.2em; border: 1px dotted #000;"></section>
				<section style="display: inline-block; float: right; width: 45%; margin-top: 0.2em; border: 1px dotted #000;"></section>
				<section style="width: 0.5em; height: 0.5em; margin: auto; transform: rotate(45deg); background-color: #000;"></section>
			</section>
		</section>'],
			   ['html'=>'<section><hr style="margin: 0px; border: 0; border-top: 5px #000 double;"></section>'],
			   ['html'=>'<section style="text-align:center;margin-right:auto;margin-left:auto;">
			<section style="margin:10px auto -14px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#000;border-top-width:2px;border-top-style:solid;border-top-color:#000;height:5px"></section>
			<section style="margin-top:-11px;display:inline-block;padding:10px;background-color:#fefefe">
				<p style="color:inherit">
					<span style="color:#000;font-size:18px">END</span>
				</p>
			</section>
		</section>'],
			   ['html'=>'<section style="background-color: none;border:none;border-style: none;margin:0px auto 0;background: none;"><section style="height: 0px;border-bottom: solid 3px #000000;"></section></section>'],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			 ],
			 5 => [
			   ['html'=>'<section style="overflow: hidden;font-family:\'Microsoft YaHei\';">
			<fieldset style="border: 0px; box-sizing: border-box; margin: 5px 0px 20px; padding: 0px;">
				<section style="width: 40px; height: 40px; padding: 8px 12px 8px 4px; color: white; font-size: 24px; font-style: italic; line-height: 1; border-radius: 20px; box-sizing: border-box; background-color:  #00bbec;">Q</section>
				<section style="width: 40px; height: 40px; padding: 8px; margin-top: -40px; margin-left: 28px; font-size: 24px; font-style: italic; line-height: 1; border-width: 1px; border-style: solid; border-top-color:  #00bbec; border-right-color:  #00bbec; border-bottom-color: #00bbec; border-radius: 20px; box-sizing: border-box; border-left-color: white !important;">
					<section style="color: #00bbec; text-align: right; box-sizing: border-box;">A</section>
				</section>
				<section style="color: white; font-size: 12px; margin-top: -28px; margin-left: 30px; box-sizing: border-box;">&amp;</section>
			</fieldset>
			<p><br></p>
			
		</section>
		<section style="margin-top: -10px;font-family:\'Microsoft YaHei\';">
			<p>
				<span style="border-color: rgb(89, 195, 249); color: rgb(77, 170, 223);font-size: 14px;">■</span>
				<span style="border-color: #59C3F9; color: #59C3F9;"> </span>
				<span style="color:#000;font-size: 16px;">问题问题问题问题问题问题问题1？</span></p>
		</section>
		<section style="margin-top: 0px;font-size: 14px;font-family:\'Microsoft YaHei\';line-height: 24px;padding:0 10px 0px 10px;color: #777;">
			<p style="padding-top: 8px;">1.步骤步骤步骤步骤步骤步骤步骤步骤步骤1</p>
			<p style="padding-top: 0px;">2.步骤步骤步骤步骤步骤步骤步骤2</p>
		</section>
		<section style="margin-top: 20px;font-family:\'Microsoft YaHei\';">
			<p>
				<span style="border-color: rgb(89, 195, 249); color: rgb(77, 170, 223);font-size: 14px;">■</span>
				<span style="border-color: #59C3F9; color: #59C3F9;"> </span>
				<span style="color:#000;font-size: 16px;">问题问题问题问题问题问题问题2？</span></p>
		</section>
		<section style="margin-top: 0px;font-size: 14px;line-height: 24px;padding:0 10px 0px 10px;color: #777;font-family:\'Microsoft YaHei\';">
			<p style="padding-top: 8px;">1.步骤步骤步骤步骤步骤步骤步骤1。</p>
			<p style="padding-top: 0px;">2.步骤步骤步骤步骤步骤步骤2。</p>
		</section>'],
			   ['html'=>'<section style="font-family:\'Microsoft YaHei\';"><fieldset style="border: 0px #4caf50; margin: 0.5em 0px; padding: 0px; font-size: 36px; font-family: inherit; font-weight: inherit; text-align: center; text-decoration: inherit; color: #4caf50; box-sizing: border-box;"><section style="float: left; margin: 0px; padding: 0px; box-sizing: border-box;"><span style="float: left; margin-top: -12px; font-family: inherit; box-sizing: border-box;"><section style="box-sizing: border-box;">Q</section></span> <span style="float: left; margin-top: 14px; font-size: 14px; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(153, 153, 153); box-sizing: border-box;"><section style="box-sizing: border-box;">&amp;</section></span> <span style="float: left; margin-top: 12px; font-size: 24px; font-family: inherit; font-weight: inherit; text-decoration: inherit; box-sizing: border-box;"><section style="box-sizing: border-box;">A</section></span></section><section style="float: left; margin: 20px 0px 0px; padding: 0px; width: 80%; height: 1px; box-sizing: border-box; background-color: #4caf50;" data-width="80%"></section></fieldset><p><br></p>
		<section style="margin-top: -10px;overflow: hidden;font-family:\'Microsoft YaHei\';">
			<p style="overflow: hidden;">
				</p><p style="float:left;width: 6px;height:6px;border-radius: 3px;margin-top: 7px; background-color: #4caf50;font-size: 14px;"></p>
				<p style="float:left;margin-left:6px;color:#000;font-size: 16px;">如果我的密码忘记了，怎么办？<br>
			</p>
		</section>
		<section style="margin-top: 0px;font-size: 14px;line-height: 24px;padding:0 10px 0px 10px;color: #777;font-family:\'Microsoft YaHei\';">
			<p style="padding-top: 8px;">1.输入登录名后点击忘记密码，通过在注册时填写的密码提示问题、答案来进行密码找回。</p>
			<p style="padding-top: 0px;">2.如果当时的密码提示问题、答案已经丢失或者遗忘，则烦请点击密码提示问题、答案输入页下方的“我忘记答案了”，进入到密码找回申请页面。</p>
		</section>
		<section style="margin-top: 20px;overflow: hidden;font-family:\'Microsoft YaHei\';">
			<p style="overflow: hidden;">
				</p><p style="float:left;width: 6px;height:6px;border-radius: 3px;margin-top: 7px; background-color: #4caf50;font-size: 14px;"></p>
				<p style="float:left;margin-left:6px;color:#000;font-size: 16px;">如果我的密码忘记了，怎么办？<br>
			</p>
		</section>
		<section style="margin-top: 0px;font-size: 14px;line-height: 24px;padding:0 10px 0px 10px;color: #777;font-family:\'Microsoft YaHei\';">
			<p style="padding-top: 8px;">1.输入登录名后点击忘记密码，通过在注册时填写的密码提示问题、答案来进行密码找回。</p>
			<p style="padding-top: 0px;">2.如果当时的密码提示问题、答案已经丢失或者遗忘，则烦请点击密码提示问题、答案输入页下方的“我忘记答案了”，进入到密码找回申请页面。</p>
		</section>
		</section>'],
			   ['html'=>'<section style="font-size:14px;font-family:\'Microsoft YaHei\';margin: 5px auto;white-space: normal;">
			<section style="width:90%;border:1px dashed #ccc;margin:10px 0;padding:10px 10px 40px;box-sizing:border-box;border-radius:6px;height:auto!important;color:#fff;background-color:rgba(76,175,80,1)">
				<section style="line-height:20px;display:inline-block;width:100%">
					<section style="display:inline-block;float:left;text-align:left;width:10%">
						<section style="color:inherit;border-color:rgba(76,175,80,.6);padding-left: 2px;padding-top: 4px;">
							<span style="font-size:26px;color:#fff">Q</span>
						</section>
					</section>
					<section style="font-style:normal;float:left;text-align:left;width: 90%;">
						<section style="display:inline-block;line-height:24px;color:#333;font-size: 14px;padding-left: 10px;">
							<p><span style="color:#fff">如果我的密码忘记了，怎么办？</span></p>
						</section>
					</section>
				</section>
			</section>
			<section style="box-sizing:border-box;width:90%;border:1px dashed rgba(76,175,80,.6);display:inline-block;margin-left:40px;margin-top:-40px;padding:10px;border-radius:8px;height:auto!important;background-color:#fefefe;float: right;">
				<section style="line-height:20px;display:inline-block;width:100%">
					<section style="display:inline-block;float:left;text-align:left;width:10%">
						<section style="color:inherit;border-color:rgba(76,175,80,.6);padding-left: 2px;padding-top: 4px;">
							<span style="font-size:26px;color:rgba(76,175,80,1)">A</span>
						</section>
					</section>
					<section style="font-style:normal;float:left;text-align:left;width: 90%;">
						<section style="display:inline-block;line-height:24px;color:#333;font-size: 14px;padding-left: 10px;">
							<p><span>1.输入登录名后点击忘记密码，通过在注册时填写的密码提示问题、答案来进行密码找回。<br>2.如果当时的密码提示问题、答案已经丢失或者遗忘，则烦请点击密码提示问题、答案输入页下方的“我忘记答案了”，进入到密码找回申请页面。</span></p>
						</section>
					</section>
				</section>
			</section>
		</section>
		<section style="clear: both;"></section>'],
			   ['html'=>'<section class="bhtpl-e"><section><section style="padding:10px 10px;" powered-by="bj.96weixin.com"><section style="color:#000;letter-spacing: 2px; line-height: 26.25px;" powered-by="bj.96weixin.com"><p style="font-size: 15px;padding:0px;margin:0px;"><strong><span style="font-size: 18px;color: rgb(32,140,131);">Q：</span></strong><strong>微信公众平台图文消息如何添加链接？</strong></p></section></section><section style="padding:10px 10px;" powered-by="bj.96weixin.com"><section style="color:#595959;letter-spacing: 1px; line-height: 26.25px;" powered-by="bj.96weixin.com"><p style="font-size: 14px;padding:0px;margin:0px;"><strong><span style="font-size: 18px;color: rgb(252,180,43);">A：</span></strong>在“原文链接”处插入链接此处适用各种链接，历史微信图文消息的链接和外部链接都可以，图文消息发送后用户点击文章底部的“阅读原文”即可跳转到所设置的链接</p></section></section></section></section>'],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			 ],
			 6 => [
			   ['html'=>'<section>
				<p style="font-size: 18px;color: #1a81eb;text-align: center;line-height: 50px;">标题</p>
				<table width="100%" cellspacing="0" cellpadding="5" style="width: 100%;" data-width="100%">
					<tbody style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;">
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height: 30px;">
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;border-top: 1px solid #ddd;background: #f5f5f5;width:100px;">检验报告编号</td>
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc;border-top: 1px solid #ddd">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">GA-QZW-2016-0047-5117</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height: 30px;">
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">委托单位</td>
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">四川九鼎建筑工程集团</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height: 30px;">
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">工程名称</td>
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">外国语学院B标4号楼</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height:30px;">
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">设备名称</td>
							<td style="word-break: break-all; max-width: 100%;word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">普通塔式起重机</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height: 30px;">
							<td style="word-break: break-all; max-width: 100%;  word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">设备型号</td>
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">QTZ40</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height:30px;">
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">质检日期</td>
							<td style="word-break: break-all; max-width: 100%;  word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">2016-02-28</span>
							</td>
							
						</tr>
						<tr style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;line-height: 30px;">
							<td style="word-break: break-all; max-width: 100%;  word-wrap: break-word !important; box-sizing: border-box !important;font-size: 12px;padding-left: 10px;border-bottom: 1px solid #ddd;background: #f5f5f5">检验机构</td>
							<td style="word-break: break-all; max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important;border-bottom: 1px solid #ddd;padding-left:10px;background: #fcfcfc">
								<span style="max-width: 100%; word-wrap: break-word !important; box-sizing: border-box !important; font-size: 10pt;">山东国安检验检测有限公司</span>
							</td>
							
						</tr>
					</tbody>
				</table>
		</section>'],
		       ['html'=>'<section style="margin: 1em 0;text-align: center;">
					<section style="width:2em;text-align: center;"></section>
					<section style="display: inline-block;font-size: 14px;text-align: center;">
						<table style="border-collapse:collapse;">
							<tbody>
								<tr>
									<th rowspan="9" style="background-color: #7ecef4;border:1px solid #7ecef4;">
										<p style="width: 1em;margin-right:0.5em;margin-left: 0.5em;color: #fff;font-weight: normal;">推荐菜单</p>
									</th>
									<td style="border: 1px solid #7ecef4;width: 350px;height : 32px;text-align: center;">锅包肉</td>
									<td style="border: 1px solid #7ecef4;width: 350px;height : 32px;text-align: center;">58<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">糖醋里脊</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">35<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width:100px;height : 32px;text-align: center;">鱼香肉丝</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">20<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 6em;height : 32px;text-align: center;">地三鲜</td>
									<td style="border: 1px solid #7ecef4;width: 6em;height :32px;text-align: center;">28<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">凉拌土豆丝</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">15<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">时令蔬菜</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">12<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">木耳白菜</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">14<span style="font-size: 12px;color:#888;"> 元/份</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">可乐</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">6<span style="font-size: 12px;color:#888;"> 元/杯</span></td>
								</tr>
								<tr>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">雪碧</td>
									<td style="border: 1px solid #7ecef4;width: 100px;height : 32px;text-align: center;">6<span style="font-size: 12px;color:#888;"> 元/杯</span></td>
								</tr>
							</tbody>
						</table>
					</section>
				</section>'],
			   ['html'=>'<table style="border:none;border-radius:8px;width:100%;" data-width="100%">
		<tbody><tr style="border-bottom:1px solid #ccc;background-color:#f5f5f4; background-image: -webkit-linear-gradient(top,#f5f5f4,rgb(245,245,244));"><th style="border-radius:6px 0 0 0;padding: 10px; text-align: left;text-shadow:0 1px 0 rgba(255,255,255,0.5);"><span style="font-size: 14px;" data-brushtype="text">#</span></th><th style="padding: 10px; text-align: left;text-shadow:0 1px 0 rgba(255,255,255,0.5);"><span style="font-size: 14px;" data-brushtype="text">Top 8 Movies</span></th><th style="border-radius:0 6px 0 0;padding: 10px; text-align: left;text-shadow:0 1px 0 rgba(255,255,255,0.5);"><span style="font-size: 14px;" data-brushtype="text">Year</span></th></tr></tbody><tbody><tr><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">The Shawshank Redemption</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1994</span></td></tr><tr style="background-color:#f5f5f4;box-shadow:0 1px 0 rgba(255,255,255,0.8) inset;border-bottom:1px solid #f2f2f2"><td style="padding: 10px; text-align: left;"><span style="font-size: 14px;">2</span></td><td style="padding: 10px; text-align: left;"><span style="font-size: 14px;">The Godfather</span></td><td style="padding: 10px; text-align: left;"><span style="font-size: 14px;">1972</span></td></tr><tr><td style="padding: 10px; text-align: left; word-break: break-all;"><span style="font-size: 14px;">3</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">The Godfather: Part II</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1974</span></td></tr><tr style="background-color:#f5f5f4;box-shadow:0 1px 0 rgba(255,255,255,0.8) inset;border-bottom:1px solid #f2f2f2"><td style="padding: 10px; text-align: left;"><span style="font-size: 14px;">4</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">The Good, the Bad and the Ugly</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1966</span></td></tr><tr><td style="padding: 10px; text-align: left; word-break: break-all;"><span style="font-size: 14px;">5</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">Pulp Fiction</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1994</span></td></tr><tr style="background-color:#f5f5f4;box-shadow:0 1px 0 rgba(255,255,255,0.8) inset;border-bottom:1px solid #f2f2f2"><td style="padding:10px; text-align:left;"><span style="font-size: 14px;">6</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">12 Angry Men</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">1957</span></td></tr><tr><td style="padding: 10px; text-align: left; word-break: break-all;"><span style="font-size: 14px;">7</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">Schindlers List</span></td><td style="padding: 10px; text-align: left; word-break: break-all;"><span style="font-size: 14px;">1993</span></td></tr><tr style="background-color:#f5f5f4;box-shadow:0 1px 0 rgba(255,255,255,0.8) inset;"><td style="padding: 10px; text-align: left;border-radius:0 0 0 6px;"><span style="font-size: 14px;">8</span></td><td style="padding:10px;text-align:left;"><span style="font-size: 14px;">One Flew Over the Cuckoos Nest</span></td><td style="padding: 10px; text-align: left;border-radius:0 0 6px 0;"><span style="font-size: 14px;">1975</span></td></tr></tbody>
		</table>'],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			   ['html'=>''],
			 ],
			 7 => [
			   ['html'=>'<section>
			<section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border: 0px none; font-size: 14px; font-family: 微软雅黑; word-wrap: break-word !important;">
				<section style="margin: 10px auto; padding: 0px; max-width: 100%; box-sizing: border-box; border: 1px solid rgb(197, 200, 204); text-align: center; border-radius: 5px; box-shadow: rgb(255, 255, 255) 0px 1px 0px, rgb(197, 200, 204) 0px 2px 0px, rgb(255, 255, 255) 0px 3px 0px, rgb(197, 200, 204) 0px 4px 0px; word-wrap: break-word !important;">
					<section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; height: 25px; border-bottom-width: 0px; border-bottom-style: solid; border-bottom-color: rgb(197, 200, 204); border-radius: 4px 4px 0px 0px; word-wrap: break-word !important; background-color: rgb(219, 219, 221);">
						<section style="margin: 2px 75% 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; height: 14px; width: 14px; border-radius: 7px; word-wrap: break-word !important; background-color: rgb(173, 173, 173);">
							<section style="margin: 30px 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; height: 14px; width: 14px; border-radius: 7px; word-wrap: break-word !important; background-color: rgb(222, 222, 222);"></section>
							<section style="margin: -37px 0px 0px 3px; padding: 0px; max-width: 100%; box-sizing: border-box; width: 8px; height: 30px; border: 1px solid rgb(202, 202, 202); border-radius: 3px; word-wrap: break-word !important; background-color: rgb(255, 255, 255);"></section>
						</section>
						<section style="margin:2px 0 0 0; padding: 0px; max-width: 100%; box-sizing: border-box; display: inline-block; height: 14px; width: 14px; border-radius: 7px; word-wrap: break-word !important; background-color: rgb(173, 173, 173);">
							<section style="margin: 30px 0px 0px; padding: 0px; max-width: 100%; box-sizing: border-box; height: 14px; width: 14px; border-radius: 7px; word-wrap: break-word !important; background-color: rgb(222, 222, 222);"></section>
							<section style="margin: -37px 0px 0px 3px; padding: 0px; max-width: 100%; box-sizing: border-box; width: 8px; height: 30px; border: 1px solid rgb(202, 202, 202); border-radius: 3px; word-wrap: break-word !important; background-color: rgb(255, 255, 255);"></section>
						</section>
					</section>
					<section style="margin: 40px 10px; padding: 0px; max-width: 100%; box-sizing: border-box; word-wrap: break-word !important;">
						<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; clear: both; min-height: 1em; line-height: 24px; text-align: center; font-size:20px;word-wrap: break-word !important;">讨论会</p>
						<p style="margin:0 auto; padding: 10px;margin-top: 10px; max-width: 100%; box-sizing: border-box; clear: both; text-align: left; font-size:14px;word-wrap: break-word !important;height: 40px;line-height: 40px;overflow: hidden;">
							<span class="icon-Wei_UI_clock_o" style="color:#999;font-size:18px;"></span>
							<span style="margin-left: 10px;">时间：'.date('Y-m-d H:i:s').'</span>
						</p>
						<p style="margin:0 auto; padding: 10px; max-width: 100%; box-sizing: border-box; clear: both; text-align: left; font-size:14px;word-wrap: break-word !important;height: 40px;line-height: 40px;overflow: hidden;">
							<span class="icon-Wei_UI_location" style="color:#999;font-size:18px;"></span>
							<span style="margin-left: 10px;">地点：南昌市高新开发区青山湖大道199号五湖国际10楼</span>
						</p>
						<p style="margin:0 auto; padding: 10px; max-width: 100%; box-sizing: border-box; clear: both; text-align: left; font-size:14px;word-wrap: break-word !important;height: 40px;line-height: 40px;overflow: hidden;">
							<span class="icon-Wei_UI_user" style="color:#999;font-size:16px;"></span>
							<span style="margin-left: 10px;">人员：百恒科技，还有谁啊</span>
						</p>
					</section>
				</section>
			</section>
		</section>'],
		       ['html'=>'<section style="margin-top: 0.5em; margin-bottom: 0.5em;">
		<section style="border-radius: 0.5em 0.5em 0px 0px; color: rgb(255, 255, 255); background-color: rgb(127, 212, 207);"><section style="margin-right: 0%; margin-left: 0%;transform: translate3d(10px, 0px, 0px);-webkit-transform: translate3d(10px, 0px, 0px);-moz-transform: translate3d(10px, 0px, 0px);-o-transform: translate3d(10px, 0px, 0px);"><section style="display: inline-block;margin-left: 10px;"><section style="width: 0px; display: inline-block; vertical-align: top; border-right-width: 0.5em; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-bottom-width: 1em; border-bottom-style: solid; border-bottom-color: rgb(255, 255, 255); border-left-width: 0.5em !important; border-left-style: solid !important; border-left-color: transparent !important; border-top-width: 1em !important; border-top-style: solid !important; border-top-color: transparent !important;"></section><section style="height: 2em; line-height: 2em; padding-right: 10px; padding-left: 10px; min-width: 6em; display: inline-block; vertical-align: top; text-align: center; color: rgb(127, 212, 207); background-color: rgb(255, 255, 255);"><section>推广有礼 |&nbsp;135</section></section><section style="width: 0px; display: inline-block; vertical-align: top; border-left-width: 0.5em; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 1em; border-top-style: solid; border-top-color: rgb(255, 255, 255); border-right-width: 0.5em !important; border-right-style: solid !important; border-right-color: transparent !important; border-bottom-width: 1em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section></section></section></section><section style="border-radius: 0px 0px 0.5em 0.5em; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-style: none solid solid; border-color: rgb(127, 212, 207); padding-right: 10px; padding-left: 10px;"><section><section><section style="line-height: 1.6; font-size: 10px;"><section><br></section></section></section></section><section style="margin-right: 0%; margin-left: 0%;"><section style="text-align: justify; padding: 5px 10px; font-size: 14px; letter-spacing: 0px; line-height: 1.8; color: rgb(62, 62, 62);"><section><span style="color: #7FD4CF; font-size: 16px;"><strong><span style="color: #7FD4CF;">邀请有礼：</span></strong><span style="color: #3E3E3E;"><span style="font-size: 14px;">标那个题</span><span style="font-size: 14px;">。</span></span></span></section></section></section><section style="margin-right: 0%; margin-bottom: 10px; margin-left: 0%;"><section style="padding: 5px 10px; font-size: 14px; letter-spacing: 0px; line-height: 1.8;"><section style="text-align: justify;"><span style="color: #7FD4CF; font-size: 16px;"><strong>寻代言人：</strong></span><span style="line-height: 1.8; text-align: left; color: #3E3E3E;">'.$text.'</span></section></section></section></section></section>'],
			   ['html'=>'<section style="margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(255, 255, 255); background-color: rgb(239, 112, 96);">
		<section style="margin: 0px; padding: 0px; display: inline-block; width: 100%; box-sizing: border-box;" data-width="100%"><section style="margin: 10px;padding: 0px 0px 15px;box-sizing: border-box;background-color: rgb(255, 255, 255);border-radius: 10px;"><section style="margin: 0px; padding: 0px; display: inline-block; width: 100%; box-sizing: border-box;" data-width="100%"><section style="margin-left: 5px; padding: 0px; width: 10px; height: 10px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section><section style="margin-right: 5px; padding: 0px; width: 10px; height: 10px; border-radius: 50%; float: right; clear: none; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section></section><section style="margin: 0px; padding: 0px; text-align: center; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; display: inline-block; box-sizing: border-box;"><section style="margin-top: 10px; padding: 0px; box-sizing: border-box; float: left;"><section style="margin: 0px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section><section style="margin: 0px 3px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section><section style="margin: 0px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section></section><section style="margin: 0px 5px; padding: 0px; box-sizing: border-box; float: left; color: rgb(239, 112, 96); font-weight: bold;"><section style="margin: 0px; padding: 0px; color: inherit; float: left;transform: rotate(-10deg);-webkit-transform: rotate(-10deg);-moz-transform: rotate(-10deg);-o-transform: rotate(-10deg);"><span style="margin: 0px; font-size: 20px; color: inherit;">活</span></section><section style="margin: 0px; padding: 0px; color: inherit; float: left;transform: rotate(10deg);-webkit-transform: rotate(10deg);-moz-transform: rotate(10deg);-o-transform: rotate(10deg);"><span style="margin: 0px; font-size: 20px; color: inherit;">动</span></section><section style="margin: 0px; padding: 0px; color: inherit; float: left;transform: rotate(-15deg);-webkit-transform: rotate(-15deg);-moz-transform: rotate(-15deg);-o-transform: rotate(-15deg);"><span style="margin: 0px; font-size: 20px; color: inherit;">细</span></section><section style="margin: 0px; padding: 0px; color: inherit; float: left;transform: rotate(5deg);-webkit-transform: rotate(5deg);-moz-transform: rotate(5deg);-o-transform: rotate(5deg);"><span style="margin: 0px; font-size: 20px; color: inherit;">则</span></section><section style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); width: 28px; height: 28px; line-height: 28px; border-radius: 50%; float: left; background-color: rgb(239, 112, 96);transform: rotate(5deg);-webkit-transform: rotate(5deg);-moz-transform: rotate(5deg);-o-transform: rotate(5deg);" data-width="28px"><span style="margin: 0px; font-size: 20px; color: #FFFFFF;">&amp;</span></section><section style="margin: 0px; padding: 0px; color: inherit; float: left;transform: rotate(5deg);-webkit-transform: rotate(5deg);-moz-transform: rotate(5deg);-o-transform: rotate(5deg);"><span style="margin: 0px; font-size: 18px; color: inherit;">FAQ</span></section></section><section style="margin-top: 10px; padding: 0px; box-sizing: border-box; float: left;"><section style="margin: 0px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section><section style="margin: 0px 3px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section><section style="margin: 0px; padding: 0px; width: 5px; height: 5px; border-radius: 50%; float: left; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(239, 112, 96);"></section></section></section></section><section style="margin: 10px; padding: 0px; box-sizing: border-box;color: #000000;"><section class="135brush"><p>'.$text.'</p><p>——百恒网络</p></section></section></section></section></section>'],
			   ['html'=>'<section style="position:static;box-sizing: border-box;">
			<section style="border: 1px solid #e2e2e2;line-height: 1.6em;">
				<section style="padding-left: 10px; color:rgb(255, 255, 255);  text-align: center; font-size: 1.4em; font-weight: bold; line-height: 36px;  background-color: rgb(249, 110, 87);text-align: left;">
					<span style="font-size:16px; font-style:normal">活动名称</span>
				</section>
				<section style="margin-top: 1.5em; text-align: left;">
					<span class="icon-Wei_UI_clock_o" style="margin-left: 20px;font-size: 16px;color: #bbb"></span>
					<section style="display: inline-block; width: 60%; padding: 0.2em; margin-left: 0.5em; font-size: 1em; font-style: normal; color: inherit;" data-width="60%">活动时间：2016年3月30日 </section>
				</section>
				<section style="margin-top: 1em; text-align: left;">
					<span class="icon-Wei_UI_location" style="margin-left: 20px;font-size: 16px;color: #bbb"></span>
					<section style="display: inline-block; width: 60%; padding: 0.2em; margin-left: 0.5em; font-size: 1em; color: inherit;" data-width="60%">活动地点：地址</section>
				</section>
				<section style="display: inline-block;background-color: rgb(249, 110, 87); height: 2em; max-width: 100%;margin-top: 1.5em; line-height: 1em; box-sizing: border-box;">
					<section style="height: 2em; max-width: 100%; padding: 0.5em 1em;color: rgb(255, 255, 255); white-space: nowrap; text-overflow: ellipsis; font-size: 1em; ">活动介绍</section>
				</section>
				<section style="padding: 1em; font-size: 1em; color: inherit;">1.1<br>2.2<br>3.3<br></section>
				<section style="display: inline-block;background-color: rgb(249, 110, 87); height: 2em; max-width: 100%;margin-top: 1.5em; line-height: 1em; box-sizing: border-box;">
					<section style="height: 2em; max-width: 100%; padding: 0.5em 1em;color: rgb(255, 255, 255); white-space: nowrap; text-overflow: ellipsis; font-size: 1em; ">参加人员</section>
				</section>
				<section style="padding: 1em; font-size: 1em; color: inherit;">人员</section>
			</section>
			<section style="display: block; width: 0; height: 0; clear: both;"></section>
		</section>'],
			   ['html'=>''],
			   ['html'=>''],
			 ],
			 8 => [
			   ['html'=>'<section class="bhtpl-e">
			<section style="max-width: 100%; float: left; margin: 0px 15px 10px; color: inherit; box-sizing: border-box !important; word-wrap: break-word !important;">
				<p style="margin-top: 0px; margin-bottom: 0px; line-height: 72px; max-width: 100%; clear: both; color: inherit; box-sizing: border-box !important; word-wrap: break-word !important;">
					<span style="box-sizing: border-box !important; max-width: 100%; word-wrap: break-word !important; color: #5f9cef; font-size: 4em ;">08</span>
				</p>
				<p style="margin-top: 0px; margin-bottom: 0px; line-height: 1.6; max-width: 100%; clear: both; color: #999; box-sizing: border-box !important; word-wrap: break-word !important;">
					<span style="box-sizing: border-box !important; font-size:1.3em;max-width: 100%; word-wrap: break-word !important; color: inherit; font-size: 1.3em;">2015/05&nbsp;</span>
				</p>
			</section>
			<section style="box-sizing: border-box !important; display: inline-block; max-width: 100%; word-wrap: break-word !important; margin: 24px 5px -20px -8px; padding: 0px; border-right-width: 5px; border-left-width: 0px; border-right-style: solid; border-right-color: #5f9cef; border-left-color: #5f9cef; height: 5px; width: 5px; vertical-align: top; float: left; border-bottom-width: 5px !important; border-top-style: solid !important; border-bottom-style: solid !important; border-top-color: transparent !important; border-bottom-color: transparent !important;"></section>
			<section style="max-width: 100%; margin-left: 125px; line-height: 1.75em; color: #000; padding: 15px; border-radius: 5px; box-sizing: border-box !important; word-wrap: break-word !important; background: #5f9cef;">
				<section style="max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;font-size:.8em;color:white;"><p style="margin:0;">日历场景风格，代办事项，描述您人生精彩的一天记录自己的人生。</p></section>
			</section>
			<p><br></p>
		</section>'],
			   ['html'=>'<section style="overflow:hidden;border-bottom:2px solid #ea8003;font-size:14px;color:#555;background-color:#fbfbfb;">
				<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">xx省xx市xx区xxxx</span>
			</section>'],
			   ['html'=>'<section class="bhtpl-e">
			<section style="background-color:#fbfbfb;padding:10px;">
				<p style="font-family:\'Microsoft Yahei\';color:#333;margin:0;padding:10px;">联系我们</p>
				<a style="display:block;">
					<section style="overflow:hidden;border-bottom:1px solid #ddd;font-size:14px;color:#545454;background-color:#fbfbfb;">
						<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">电话：</span>
						<span class="phone_num" style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">130xxxxxxxx</span>
					</section>
				</a>
				<section style="overflow:hidden;border-bottom:1px solid #ddd;font-size:14px;color:#545454;background-color:#fbfbfb;">
					<span style="display:block;float:left;margin-left:11px;line-height:38px;font-family:\'Microsoft Yahei\';">QQ ：</span>
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">888888888</span>
				</section>
				<section style="overflow:hidden;border-bottom:1px solid #ddd;font-size:14px;color:#545454;background-color:#fbfbfb;">
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">微信：</span>
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">xxxx</span>
				</section>
				<section style="overflow:hidden;border-bottom:1px solid #ddd;font-size:14px;color:#545454;background-color:#fbfbfb;">
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">地址：</span>
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">xx省xx市xx区xx</span>
					<span style="display:block;float:right;margin-right:10px;font-weight:bold;line-height:38px;"></span>
				</section>
				<section style="overflow:hidden;font-size:14px;border-bottom:1px solid #ddd;color:#545454;background-color:#fbfbfb;">
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">邮箱：</span>
					<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">xxxxx@xxxx.xx</span>
				</section>
			</section>
		</section>'],
			   ['html'=>'<section style="overflow:hidden;border-bottom:2px solid #da2828;font-size:14px;color:#555;background-color:#fbfbfb;">
				<span style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">xxxxxx@xxxx.xx</span>
			</section>'],
			   ['html'=>'<section style="overflow:hidden;border-bottom:2px solid #08c056;font-size:14px;color:#555;background-color:#fbfbfb;">
					<span class="phone_num" style="display:block;float:left;margin-left:10px;line-height:38px;font-family:\'Microsoft Yahei\';">130 xxxx xxxx</span>
				</section>'],
			   ['html'=>''],
			 ],
		   ];
     $json = isset($tpl[$type]) ? $tpl[$type] : '';
	 if ( $json == '' ) return '';
	 $html = '';
	 foreach( $json as $key=>$val ) {
	   $html .= ($val['html']!='') ? '<div class="bhtpldiv"><div class="bh-tpl-tpl">'.$val['html'].'</div></div>' : '';
	 }
	 return $html;
  }
  
}
