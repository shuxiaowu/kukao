<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>在线地图 | {$metatitle}</title>
<script type="text/javascript" src="http://api.map.baidu.com/api?ak=RIi1GdLPTitbEj7vVu22HHDYG9Qa6EdI&v=2.0&services=true"></script>
<script type="text/javascript" src="__js__/map/map.js"></script>
<link rel="stylesheet" href="__css__/map/map.css" />
<script type="text/javascript">
 var bh = {  
       'url' : '__MODULE__',
	   'bh'  : '__ROOT__',
	   'img' : '__img__',
	   'pic' : '__pic__'
 };
</script>
</head>
<body>
 <div class="map" id="bh-map" style="overflow: hidden; position: relative; background:#189aff; z-index: 0; text-align: left;"></div>
  <script type="text/javascript">
    var map   = new BMap.Map('bh-map');
	var point = new BMap.Point({$map['jcode']}, {$map['wcode']});
	map.centerAndZoom(point,19);		
    map.setZoom(16);
	var  mapStyle = { 
        features  : ["road", "building","water","land"],
		style     : 'normal'
    }
	map.setMapStyle(mapStyle);
    var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
                    '电话：{$map["tel"]}<br/>邮箱：{$map["email"]}<br/>地址：{$map["add"]}' +
                  '</div>';
	var icon = new BMap.Icon(bh['img']+'/map/map{$map["type"]}.png', new BMap.Size(95,119), {'anchor':new BMap.Size(60,120)});
	var marker = new BMap.Marker(point,{icon:icon});
	map.addOverlay(marker);
	var searchInfoWindow = null;
	searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
			title  : "{$map['name']}",    //标题
			width  : 390,             //宽度
			height : 140,             //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : true,     //自动平移
			searchTypes   : [
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
    });	
    marker.addEventListener("click", function(e){
	    searchInfoWindow.open(marker);
    });
    map.addOverlay(marker); //在地图中添加marker
  </script>
</body>
</html>
