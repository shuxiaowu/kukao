<!DOCTYPE html>
<html>
<head>
<include file="public/meta" />
</head>
<body style="background:#fff;">
 <div class="btn-group" style="margin-bottom:10px;">
  <if condition="$act eq ''">
   {:btn(array('vals'=>'在线拼图','faicon'=>'puzzle-piece','round'=>1,'size'=>3,'scene'=>'primary','url'=>url('files/meituxiuxiu')))}
   {:btn(array('vals'=>'美化图片','icon'=>'picture','scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu','act=edit')))}
   {:btn(array('vals'=>'在线美图','faicon'=>'magic','round'=>1,'scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu','act=online')))}
  </if>
  <if condition="$act eq 'edit'">
   {:btn(array('vals'=>'在线拼图','faicon'=>'puzzle-piece','round'=>1,'scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu')))}
   {:btn(array('vals'=>'美化图片','icon'=>'picture','size'=>3,'scene'=>'success','url'=>url('files/meituxiuxiu','act=edit')))}
   {:btn(array('vals'=>'在线美图','faicon'=>'magic','round'=>1,'scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu','act=online')))}
  </if>
  <if condition="$act eq 'online'">
   {:btn(array('vals'=>'在线拼图','faicon'=>'puzzle-piece','round'=>1,'scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu')))}
   {:btn(array('vals'=>'美化图片','icon'=>'picture','scene'=>'default','size'=>3,'url'=>url('files/meituxiuxiu','act=edit')))}
   {:btn(array('vals'=>'在线美图','faicon'=>'magic','round'=>1,'size'=>3,'scene'=>'purple','url'=>url('files/meituxiuxiu','act=online')))}
  </if>
 </div>
 <script src="http://open.web.meitu.com/sources/xiuxiu.js" type="text/javascript"></script>
 <script type="text/javascript">
	xiuxiu.setLaunchVars("nav","edit");
	<if condition="$act eq ''">
	 xiuxiu.embedSWF("xiuxiu", 2, 700, 500, "lite");
	 xiuxiu.setLaunchVars("nav",'puzzleModel');
	</if>
	
	<if condition="$act eq 'edit'">
	 xiuxiu.embedSWF("xiuxiu", 1, 700, 500, "lite");
	 xiuxiu.setLaunchVars("nav",'beautifySkin');
	 xiuxiu.setLaunchVars("sizeTipVisible", 1);
	</if>
	
	<if condition="$act eq 'online'">
	 xiuxiu.embedSWF("xiuxiu", 3, 700, 500, "lite");
	 xiuxiu.setLaunchVars("nav",'beautifySkin');
	 xiuxiu.setLaunchVars("sizeTipVisible", 1);
	</if>
	
	xiuxiu.onInit = function (id){
      xiuxiu.setUploadURL("{$uploadurl}");
      xiuxiu.setUploadType(2);
      xiuxiu.setUploadDataFieldName("Filedata");
	  xiuxiu.setUploadArgs({'from':'meituxiuxiu'});
	}
	xiuxiu.onUploadResponse = function (data){
	   var data = eval("("+data+")");
	   if ( data.error!='' ) {
	     swal(data.error,'','error');
	   } else {
		 $(parent.document.body).find('#meitupic').val(data.file);
		 $(parent.document.body).find('.btn-meitu-close').click();
	   }
	}
	xiuxiu.onDebug = function (data){
       swal(data,'','error');
	}
	xiuxiu.onClose = function (id){
	   $(parent.document.body).find('.btn-meitu-close').click();
	}	
 </script>
 </if>
 <div id="flashEditorOut">
   <div id="xiuxiu">
     <div class="xiuxiuloading" style="width:100%; height:500px; background:#fafafa; color:#666; line-height:500px; text-align:center;"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i> 加载中..</div>
   </div>
 </div>
<include file="public/footer" />
</body>
</html>
