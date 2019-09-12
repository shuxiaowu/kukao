<!DOCTYPE html>
<html>
<head>
<include file="public/meta" />
</head>
<body style="background:#fff;">
<style>
 td,.panel-body{ border:none !important;}
 .bhmap{ width:100%; height:100%; position:fixed; top:0; left:0; z-index:999; background:#fff; display:none;}
 .backicon{ width:35px; height:35px; border-radius:50%; left:10px; top:10px; background:#b761c5; line-height:35px; text-align:center; color:#fff; font-size:18px; z-index:1000; position:fixed; cursor:pointer; display:none;}
</style>
 <div class="bhmap">
   <iframe width="100%" height="100%" id="mapPage" frameborder="0" scrolling="no" src=""></iframe> 
 </div>
 <div class="backicon">{:faicon('angle-left')}</div>
 <div class="panel" style="padding:0;">        
    <div class="panel-body">
    
      <table class="table">
        <tr>
         <td>公司名称：</td>
         <td ><input type="text" value="" placeholder="公司名称" name="name" class="b-name form-control"></td>
        </tr>
        <tr>
         <td width="15%">选择图标：</td>
         <td>
         <input type="radio" name="mapstyle" id="mapstyle1" value="1" class="m-checkbox mapstyle" checked="checked"><label for="mapstyle1"></label>&nbsp;&nbsp;<img src="__img__/map/map1.png" height="50"> &nbsp;&nbsp;
         <input type="radio" name="mapstyle" id="mapstyle2" value="2" class="m-checkbox mapstyle"><label for="mapstyle2"></label>&nbsp;&nbsp;<img src="__img__/map/map2.png" height="50"> </td>
        </tr>
        <tr>
         <td>公司电话：</td>
         <td><input type="text" value="" placeholder="公司电话" name="tel" class="b-tel form-control"></td>
        </tr>
        <tr>
         <td>公司邮箱：</td>
         <td><input type="text" value="" placeholder="公司邮箱" name="email" class="b-email form-control"></td>
        </tr>
        <tr>
         <td>公司地址：</td>
         <td><input type="text" value="" placeholder="公司地址" name="address" class="b-address form-control" style="width:87%"> {:btn(array('vals'=>'定位','faicon'=>'map-o','add'=>'pull-right map-pos','tips'=>'点击使用定位获取地址及经纬度'))}</td>
        </tr>
        <tr>
         <td>　经纬度：</td>
         <td><input type="text" value="" placeholder="经度" name="jingdu" class="b-jingdu form-control pull-left" style="width:43%">
             <input type="text" value="" placeholder="维度" name="weidu" class="b-weidu form-control" style="width:43%"> <a href="http://api.map.baidu.com/lbsapi/getpoint/index.html" target="_blank">{:btn(array('vals'=>'获取','icon'=>'map-marker','scene'=>'purple','add'=>'pull-right','tips'=>'点击按钮跳转至百度坐标采集'))}</a></td>
        </tr>
        <tr>
         <td>宽度高度：</td>
         <td><input type="text" value="" placeholder="宽度 需填写单位 px,% 默认100%" name="width" class="b-width form-control pull-left" style="width:43%">
             <input type="text" value="" placeholder="高度 需填写单位 px 默认500px" name="height" class="b-height form-control" style="width:43%"></td>
        </tr>
        <tr>
         <td>&nbsp;</td>
         <td>{:btn(array('vals'=>'生成地图','size'=>3,'add'=>'tobhmap','faicon'=>'map-o','scene'=>'primary'))}</td>
        </tr>
        <tr></tr>
      </table>
      
    </div>
    <script type="text/javascript">
      $(".tobhmap").click(function(e) {
        var name = $(".b-name").val();
		var tel  = $(".b-tel").val();
		var email = $(".b-email").val();
		var address = $(".b-address").val();
		var jingdu  = $(".b-jingdu").val();
		var weidu  = $(".b-weidu").val();
		var w = $(".b-width").val();
		var h = $(".b-height").val(); 
		var style = $(".mapstyle:checked").val();
		if ( name == '' ) { swal('请先输入公司名称','','error'); return false;}
		if ( address == '' ) {swal('请输入公司地址','','error'); return false;}
		if ( jingdu == '' || weidu == '' ) {swal('经纬度不能为空~','','error'); return false;}
		uri = 'name='+name+'&tel='+tel+'&email='+email+'&add='+address+'&jcode='+jingdu+'&wcode='+weidu+'&type='+style;
		$(parent.document.body).find('#bhmapuri').val(uri);
		if ( w != '' ) $(parent.document.body).find('#bhmapwidth').val(w);
		if ( h != '' ) $(parent.document.body).find('#bhmapheight').val(h);
	    $(parent.document.body).find('.btn-bhmap-close').click();
      });
	  var mapuri = 'http://apis.map.qq.com/tools/locpicker?search=1&type=1&key=TBABZ-HELKU-ZVDV4-4BDB5-L3M55-A4BAR&referer=bhcrm4.0&policy=1';
	  $(".map-pos").click(function(e) {
        $(".backicon,.bhmap").fadeIn(500);
        $("#mapPage").attr("src",mapuri);
      });
	  $(".backicon").click(function(e) {
		$(".backicon,.bhmap").fadeOut(500);
	  });
	  window.addEventListener('message', function(event) {
		var loc      = event.data; 
		var cityname = loc.cityname;
		var poiname  = loc.poiname;
		var lat      = loc.latlng.lat;
		var lng      = loc.latlng.lng;
		var address  = loc.poiaddress;
		if ( $(".b-address").val() == '' ) $(".b-address").val(address);
		$(".b-jingdu").val(lng);
		$(".b-weidu").val(lat);
		$(".backicon,.bhmap").fadeOut(500);                     
	  }, false);
    </script>
    <div class="panel-footer">{:icon('warning-sign')} 提示，公司名称，地址及经纬度必填</div>
 <include file="public/footer" />
</body>
</html>
