// JavaScript Document
$(document).ready(function(e) {
	
 $(".ckallbox input").click(function(e) {
   if ( $(this).is(":checked") ) {
     $(".maintr").addClass("info");
	 $('input').prop("checked",true);
   } else {
     $(".maintr").removeClass("info");
	 $('input').prop("checked",false);
   }
 });
 
 $('.maintr input').click(function(e) {
   if ( $(this).is(":checked") ) {
     $(this).parent().parent().addClass("info");
     if($("input[type='checkbox']").length-2 == $(".maintr input[type='checkbox']:checked").length ){
	   $('input').prop("checked",true);
     }
   } else {
     $(this).parent().parent().removeClass("info");
	 $(".ckallbox input").prop("checked",false);
   }
 });
 
 $(".btn-enabled,.btn-disabled").click(function(e) {
   var tables = $(this).parent().data("tables");
   var id     = $(this).parent().data("id");   
   var field  = $(this).parent().data("field"); 
   var tip1   = $(this).parent().data("tip1"); 
   var tip2   = $(this).parent().data("tip2"); 
   var $this  = $(this);
   var modval = ($this.data('mark')==1) ? 1 : 0;
   if(tables!='' && id!='' && field!=''){
	  $(this).attr("disabled",true).text('更改中..');
	  $.post( abspath+'/Admin/modattr', {'tables':tables,'field':field,'id':id,'val':modval,'act':'modattr'},function(data){
		$this.attr("disabled",false);
		if(data!=''){
		  if($this.data("mark")==1){
			$this.text(tip1);
			$this.removeClass("btn-default").addClass("btn-info");
			$this.parent().find(".btn-disabled").removeClass("active");
		  }else{
			$this.text(tip2);
			$this.removeClass("active").addClass("active");
			$this.parent().find(".btn-enabled").removeClass("btn-info").addClass("btn-default");
		  }
		}else{
		  swal('数据有误，请重新操作！','','error');
		}
	  },'json');
    }else{
	  swal('数据有误，请重新操作！','','error');
    }
  });
  
  if( $("#uppic").length>0 ){
	  $(function () {
		$("#uppic").wrap("<form id='uppicform' action='"+abspath+"/Files/picupload' enctype='multipart/form-data' method='post'></form>");
		$("#uppic").change(function(){
			var iswater = ($(".nowater").length>0) ? 1 : 0;
			$("#uppicform").ajaxSubmit({
				dataType : 'json',
				data     : {'iswater':iswater,'width':$(".cutswidth").val(),'height':$(".cutsheight").val()},
				beforeSend: function() {
				  $(".uploadloading").html('<i class="fa fa-spinner fa-spin"></i> 上传中..');
				},
				success: function(data) {
				  $(".uploadloading").html('<span class="glyphicon glyphicon-picture"><b>选择上传</b></span>');
				  if(data.error!=''){
					swal(data.error,'','error'); return false;
				  }else{
					$("#pic").val(data.file);
					if ( $(".img-container").length > 0 ) $(".img-container img").attr("src",upfile+'images/'+data.file);
					$(".uppicdiv").find(".picfoot b").html(data.file);
					$(".uppicdiv").show().find(".picdiv").html('<img src="'+upfile+'images/'+data.file+'" data-action="zoom">');
					if ( $(".showcroptool").length > 0 ) croppic();
				  }
				},
				error:function(xhr){}
			});
		});
	 });
  } 
  
  $(".picfoot span").click(function(e) {
    $("#pic").val('');
	$(".uppicdiv").hide().find(".picdiv").html('');  
  });
  //裁剪
  $(".btn-cut").click(function(e) {
    if ($(".crop-container").is(":hidden")) {
	  var path = $("#pic").val();
	  if ( path == '' ) {
	    swal('裁剪路径为空，请上传一张裁剪的图片吧','','error'); return false;
	  }
      croppic();
	} else {
	  $(".crop-container,.crop-mask").fadeOut(500);
	}  
  });
  function croppic(){
	  var size_w = parseInt($("#size-w").val());
	  var size_h = parseInt($("#size-h").val());
	  var aspectRatio = (size_w > 0 && size_h > 0) ?  size_w/size_h : null;
	  $(".img-container img").cropper('destroy');
	  var cropoption = { minContainerWidth: 320,minContainerHeight: 180,zoomin: null,zoomout: null,movable:true,aspectRatio: aspectRatio,
						  crop: function (data) {
							$('#img-x').val(Math.round(data.x));
							$('#img-y').val(Math.round(data.y));
							$('#img-h').val(Math.round(data.height));
							$('#img-w').val(Math.round(data.width));
							$('#img-r').val(Math.round(data.rotate));
							$(".c-w").text(Math.round(data.width));
							$(".c-h").text(Math.round(data.height));
							$(".c-l").text(Math.round(data.x));
							$(".c-t").text(Math.round(data.y));
						  }
					  };
      $(".img-container img").on({
       'build.cropper': function (e) {},
       'built.cropper': function (e) {},
       'dragstart.cropper': function (e) {},
       'dragmove.cropper': function (e) {},
       'dragend.cropper': function (e) {},
       'zoomin.cropper': function (e) {},
       'zoomout.cropper': function (e) {}
      }).cropper(cropoption);
	  $(".crop-container,.crop-mask").fadeIn(500);
  }
  $("body").on("click",".btn-close-cropper,.crop-mask",function(data){
    $(".crop-container,.crop-mask").fadeOut(500);
  });

  $("body").on("click",".btn-cropper",function(){
	var $this= $(this);
    var path = $("#pic").val();
	var x    = $("#img-x").val();
	var y    = $("#img-y").val();
	var w    = $("#img-w").val();
	var h    = $("#img-h").val();
	var r    = $("#img-r").val();
    var iswater = ($(".nowater").length>0) ? 1 : 0; //是否添加水印 1表示绝对不添加
	var delpic  = ($(".nodeloriginal").length>0) ? 1 : 0; //是否删除原图 1表示不删除
	if ( path == '' ) {
	  swal('裁剪路径为空，请上传一张裁剪的图片吧','','error'); return false;
	}
	if ( w == 0 || h == 0 ) {
	  swal('裁剪宽度和高度不能为0','','error'); return false;
	}
	$this.html('<span class="fa fa-spinner fa-spin"></span> 裁剪中..').addClass("disabled");
	$.post(abspath+'/Admin/croppic',{'path':path,'x':x,'y':y,'w':w,'h':h,'r':r,'iswater':iswater,'delpic':delpic},function(data){
	  $this.html('<span class="glyphicon glyphicon-scissors"></span> 裁剪').removeClass("disabled");
	  if ( data.state == 1 ) {
		$(".crop-container,.crop-mask").fadeOut(500);
		$("#pic").val(data.file);
		$(".uppicdiv").find(".picfoot b").html(data.file);
		$(".uppicdiv").show().find(".picdiv").html('<img src="'+upfile+'images/'+data.file+'" data-action="zoom">');
		$(".img-container img").attr("src",upfile+'images/'+data.file);
	  } else {
	    swal(data.msg,'','error');
	  }
	},'json');
  });
  //裁剪
  
  //我的图库
  $("body").on("click",".picture-fname",function(){
    var path = $(this).data("path");
	$(".pic-active").hide();
	$(this).find(".pic-active").show();
	$("#picture-file").val(path);
  });
  $("body").on("click",".picture-litype",function(){
    $(".picture-sidebar .list-group-item").removeClass("active");
	$(this).addClass("active");
	var path = $(this).data("path");
	$("#picture-path").val(path);
	picprogress();
	$.post(abspath+'/Admin/getpiclist',{'path':path,'page':1},function(data){
	  picprogress(1);
	  if ( data.state == 1 ) {
	    $(".picture-mblock").html(data.html);
		$(".picture-pagelist").html(data.pagelist);
		$(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	  } else {
	    swal(data.msg,'','error');
	  }
	},'json');
  });
  $("body").on("click",".picture-pagelist li a",function(){
	var path = $("#picture-path").val();
    var page = $(this).data("page");
	if ( page > 0 ) {
	  picprogress();
	  $.post(abspath+'/Admin/getpiclist',{'path':path,'page':page},function(data){
		picprogress(1);
	    if ( data.state == 1 ) {
		  $(".picture-mblock").html(data.html);
		  $(".picture-pagelist").html(data.pagelist);
		  $(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	    } else {
		  swal(data.msg,'','error');
	    }
	  },'json');
	}
  });
  $("body").on("click",".btn-choice",function(){
    $("#bh-picture").modal("show");
  });
  $("body").on("click",".btn-choice-picture",function(){
    var file = $("#picture-file").val();
	if ( file!='' ) {
	  $("#pic").val(file);
	  $(".uppicdiv").find(".picfoot b").html(file);
	  $(".uppicdiv").show().find(".picdiv").html('<img src="'+upfile+'images/'+file+'" data-action="zoom">');
	  $("#bh-picture").modal("hide");
	  $(".img-container img").attr("src",upfile+'images/'+file);
	} else {
	  swal('请在图库选择一张图片','','error');
	}
  });
  //
  
  if ($(".uploadpic").length > 0) {
   $(".uploadpic").each(function(e){
	  var _index = $(this).data('id');
	  var id     = "#uploadpic"+$(this).data('id');
	  var fromid = "myupload"+$(this).data('id');
	  $(function () {
		$(id).wrap("<form id='"+fromid+"' action='"+abspath+"/files/picupload' enctype='multipart/form-data' method='post'></form>");
		$(id).change(function(){
			if($(id).val()=="") return false;
			$("#"+fromid).ajaxSubmit({
				dataType : 'json',
				data     : {},
				beforeSend: function() {
				  picprogress(0,(_index-1));
				},
				success: function(data) {
				  picprogress(1,(_index-1));
				  if(data.error!=''){
					swal(data.error,'','error'); return false;
				  }else{
					$('#uppic'+_index).val(data.file);
					$(".uppicturediv").eq(_index-1).find(".mypicfoot b").html(data.file);
					$(".uppicturediv").eq(_index-1).show().find(".picdiv").html('<img src="'+upfile+'images/'+data.file+'" data-action="zoom">');
				  }
				},
				error:function(xhr){}
			});
		});
	 });
   });
  }
  $(".mypicfoot span").click(function(e) {
    $id = $(this).parent().data("id");
	$('#uppic'+$id).val('');
	$(".uppicturediv").eq($id-1).hide().find(".picdiv").html('');  
  });
  function picprogress($statue,$index){
	var $statue  = ($statue  == ''  || $statue  == undefined)  ? 0 : $statue;
	var $index   = ($index  == ''  || $index  == undefined)  ? 0 : $index;
	if ( !$statue ) {
	  $(".up-progress").eq($index).show();
	  $(".up-progress").eq($index).find(".up-bar").animate({"width":'400'},7000,function(e){
	     $(".up-progress").eq($index).find(".up-bar").css("width",0);
		 if(!$(".up-progress").eq($index).is(":hidden")) picprogress($statue,$index);
	  });
	} else {
	  $(".up-progress").eq($index).find(".up-bar").css("width",0);
	  $(".up-progress").eq($index).hide(200);
	}
  }
  
  if( $("#upfile").length>0 ){
	  $(function () {
		$("#upfile").wrap("<form id='upfileform' action='"+abspath+"/Files/fileupload' enctype='multipart/form-data' method='post'></form>");
		$("#upfile").change(function(){
			$("#upfileform").ajaxSubmit({
				dataType : 'json',
				data     : {},
				beforeSend: function() {
				  $(".ui-file-foot").html('<span><i class="fa fa-spinner fa-spin"></i>上传中..</span>');
				},
				success: function(data) {
				  $(".ui-file-foot").html('<span class="glyphicon folder-open"><b>选择上传</b></span>');
				  if(data.error!=''){
					swal(data.error,'','error'); return false;
				  } else {
					$("#filename").val(data.file);
					$(".upfilediv").show()
					$(".upfilename").html('<a href="'+upfile+'files/'+data.file+'">'+data.file+'</a>');
				  }
				},
				error:function(xhr){}
			});
		});
	 });
  }
  $(".del-file").click(function(e) {
	$("#filename").val('');
	$(".upfilediv").hide().find(".upfilename").html('');
  }); 
  if( $("#upatlas").length>0 ){
    $('#upatlas').uploadify({
	    formData  : {'iswater' : 0},
		swf       : upload+'/uploadify.swf',
		uploader  : abspath+'/files/picupload',
		width     : 400,
		height    : 29,
		fileTypeDesc   : '图片类型',
		buttonText     : '<span class="glyphicon glyphicon-picture"><b>选择上传</b></span>',
		buttonClass    : 'atlasicon',
		multi          : true,
		fileTypeExts   : '*.jpg;*.png;*.gif;*.jpeg',
		fileSizeLimit  : '30MB',
		overrideEvents : ['onSelectError'],
		onSelectError : function (file, errorCode, errorMsg) {
		  if (errorCode == -110) {
			swal('文件已经超过30MB了','','error'); return false;
		  }
		},
		onUploadStart : function () {
		  if( $(".piclimit").text() == 0 ){
			 $('#upatlas').uploadify('stop');
			 $('#upatlas').uploadify('cancel');
			 swal("已经超过允许上传范围",'','error');
			 return false;
		  }
		  $("#upatlas").uploadify("settings",'formData',{'iswater':($(".nowater").length>0)?1:0});
		},
		onUploadSuccess : function (file, data, response) {
		   var data = eval("("+data+")");
		   if(data.error!=''){
			 swal(data.error,'','error');
		   }else{
			 var no = parseInt($(".piclimit").text());
			 no--;
			 $(".upupatlas").show();
			 $(".piclimit").text(no);
			 $(".upupatlas .atlaspiclist").append('<div class="atlaspic"><input type="hidden" name="atlas[]" value="'+data.file+'"><div class="atlaspicfile"><img src="'+upfile+'images/'+data.file+'" data-action="zoom"></div><div class="atlasdel"><span class="glyphicon glyphicon-trash"></span> 删除图片</div></div>');
		   }	
		}
     });
  } 
  $(".atlaspiclist").on("click",".atlasdel",function(){
	$(this).parent().remove();
	var no = parseInt($(".piclimit").text());
	$(".piclimit").text((no+1));
  }); 
  //下拉选择
  $("body").on("click",".dropdown-type li a",function(){
	$(this).parent().parent().parent().find(".drop-val").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
  });
  $("body").on("click",".mydrop-menu-type1 li a",function() {
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text()); 
	var $this = $(this);
	$(".btn-group-type2").find(".drop-topic").text('请选择子类');
	$(".btn-dropdownlink").find(".drop-hide").eq(1).val(0);
    $.post( abspath+'/Admin/droplinks', {'tables':$this.data("tables1"),'tables2':$this.data("tables2"),'field':$this.data("field1"),'field2':$this.data("field2"),'id':$this.data("id")},function(data){
	   $(".mydrop-menu-type2").html(data);
    },'json');
  });
  $(".mydrop-menu-type2").on("click",".menu-li2",function(e){
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
	var $this  = $(this);
	var tables = $(this).data("tables");
	var field  = $(this).data("field");
	if(field!='' && tables!=''){
	 $(".btn-group-type3").find(".drop-topic").text('请选择小类');
	 $(".btn-dropdownlink").find(".drop-hide").eq(2).val(0);
     $.post( abspath+'/Admin/droplinks2', {'tables':tables,'field':field,'id':$this.data("id")},function(data){
	   $(".mydrop-menu-type3").html(data);
     },'json');
	}
  });
  $(".mydrop-menu-type3").on("click",".menu-li3",function(e){
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
  });
  //
  $(".mypage .jump_go").click(function(e) {
	 var page = $(".mypage .page_num").val();
     var url = $(".mypage .jump_url").val()+"/page/"+page;
	 if(page==''){
	   swal('请输入您要跳转的页码','','error');
	   $(".mypage .page_num").focus();
	   return false;
	 }
	 if(isNaN(page)){
	   swal('页码请输入数字','','error');
	   $(".mypage .page_num").val('');
	   $(".mypage .page_num").focus();
	   return false;
	 }
	 location.href = url;
  });
  //修改
  $("body").on("blur",".modfield",function(){
    var $tables = $(this).data("tables");
	var $id     = $(this).data("id");
	var $val    = $(this).val();
	var $field  = $(this).data("field");
	var $old    = $(this).data("odata");
	if ($tables !='' && $id!='' && $val!='' && $field!='') {
	  if ($val!=$old) {
		$.post( abspath+'/Admin/modField', {'tables':$tables,'val':$val,'id':$id,'field':$field},function(data){
		   if (data == 1) {
		     swal('修改成功','修改字段：'+$field+' 修改值为：'+$val,'success');
		   } else {
		     swal('修改失败','','error');
		   }
		},'json');
	  }
	}
  });
  //选择
   $("body").on("click",".chosen-single",function(){
     var $this = $(this);
	 if (!$this.parent().hasClass("chosen-with-drop")) {
	   $this.parent().addClass("chosen-with-drop");
	 } else {
	   $this.parent().removeClass("chosen-with-drop");
	 }
   });
   $("body").on("click",".active-result",function(){
     var $parent = $(this).parent().parent().parent();
	 var $id     = $(this).data("id");
	 $parent.find(".chose-keyid").val($id);
	 $parent.find(".chosen-single span").text($(this).text());
	 $parent.removeClass("chosen-with-drop");
   });
   $("body").on("keyup",".chosen-keys",function(){
     var $obj  = $(this).parent().parent().parent();
	 var $keys = $(this).val();
	 var $field = $(this).data("field");
	 var $sfield = $(this).data("sfield");
	 var $tables = $(this).data("tables");
	 if ( $field!='' && $sfield!='' && $tables!='' ) {
	   $obj.find(".chosen-loading").show(); 
	   $.post(abspath+'/Admin/searchField',{'field':$field,'sfield':$sfield,'key':$keys,'tables':$tables},function(data){
		 $obj.find(".chosen-loading").hide(); 
	     if ( data == 0 ) {
		   $obj.find(".chosen-results").html('<li class="active-result" data-id="0">没有数据</li>');
		 } else {
		   $obj.find(".chosen-results").html(data);
		 }
	   },'json');
	 } else {
	   $obj.find(".chosen-loading").hide(); 
	 }
   });
   $("body").on("click",".search-choice-close",function(){
     $(this).parent().parent().find(".chose-keyid").val(0);
	 $(this).parent().find("span").text('请选择');
   });
   //结束
});

function sysadv(td){
  if(td.topic.value.length==0){swal('请输入广告标题','','error');td.topic.focus();return false;}
  if(td.linkurl.value.length==0){swal('请输入广告链接','','error');td.linkurl.focus();return false;}
}
function systype(td){
  if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
}
function pubdel(td){
  var objs = document.getElementsByTagName("input");
  var is = 0;
  for(var j=0;j<objs.length;j++){ if(objs[j].type=='checkbox'){ if(objs[j].checked == true){ is++;}}}
  if(is==0) {swal('请选择您要操作的数据','','error');return false;}
}
function sysdata(td){
  if(td.topic.value.length==0){swal('请输入资料名称','','error');td.topic.focus();return false;}
  if(td.inftype.value==0){swal('请选择资料所属','','error');return false;}
}
function sysabout(td){
  if(td.topic.value.length==0){swal('请输入资料名称','','error');td.topic.focus();return false;}
}
function syslink(td){
  if(td.topic.value.length==0){swal('请输入链接名称','','error');td.topic.focus();return false;}
  if(td.linkurl.value.length==0){swal('请输入链接地址','','error');td.linkurl.focus();return false;}
}
function sysonline(td) {
  if(td.topic.value.length==0){swal('请输入客服名称','','error');td.topic.focus();return false;}
  if(td.amount.value.length==0){swal('请输入客服账号','','error');td.amount.focus();return false;}
}
function sysmtag(td){
  if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
  if(td.inftype.value==0){swal('请选择类别所属','','error');return false;}
}
function sysstag(td){
  if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
  if(td.ctag.value==0){swal('请选择大类','','error');return false;}
  if(td.mtag.value==0){swal('请选择子类','','error');return false;}
}
function syspro(td){
  if(td.productname.value.length==0){swal('请输入产品名称','','error');return false;} 
  if(td.ctag.value==0){swal('请选择产品大类','','error');return false;}
}
function modord(tables,id){
  var inp = "modord"+id;
  var ord = document.getElementsByName(inp)[0].value;
  if(tables!='' && id!=''){
    $.post( abspath+'/Admin/modord', {'tables':tables,'id':id,'ord':ord,'act':'modord'},function(data){
	  if ( data == 1 ) {
	    swal('排序修改成功','','success');
	  } else {
	    swal('排序修改失败，请重试','','error');
	  }
    },'json');
  }
}