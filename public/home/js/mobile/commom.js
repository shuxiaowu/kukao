  //fzui.js
  var fzui = {
	  systips  : function(tips,title){
		var tips  = (tips == ''  || tips == undefined)  ? '提示' : tips;
		var title = (title == '' || title == undefined) ? '系统提示' : title;
		$("body").append('<div class="ui-dialog show ui-dialog-systips"><div class="ui-dialog-cnt"><div class="ui-dialog-bd"><div><h4>'+title+'</h4><div>'+tips+'</div></div></div><div class="ui-dialog-ft ui-btn-group"><button type="button" data-role="button" class="select ui-dialog-tipclose">确定</button></div></div></div>');
		fzui.tiphide();
	  },
      tiphide : function(type){
		$(".ui-dialog-close,.ui-dialog-tipclose").on("click",function(){  
		 $(".ui-dialog-systips").hide().remove('*');
		});
	  },
	  sysconfirm : function(tips,func,title,ishide) {
		 var tips   = (tips == ''  || tips == undefined)  ? '提示' : tips;
		 var title  = (title == '' || title == undefined) ? '系统提示' : title;
		 var ishide = (ishide == '' || ishide == undefined) ? 1 : ishide;
		 $("body").append('<div class="ui-dialog show"><div class="ui-dialog-cnt"><header class="ui-dialog-hd ui-border-b"><h3>'+title+'</h3><i class="ui-dialog-close" data-role="button"></i></header><div class="ui-dialog-bd"><h4></h4><div>'+tips+'</div></div><div class="ui-dialog-ft"><button type="button" class="ui-dialog-btnclose" data-role="button">取消</button><button type="button" class="ui-dialog-true" data-role="button">确定</button></div></div></div>'); 
		 fzui.syshide(1);
		 fzui.sysdialogtrue(func,ishide);
	  },
	  sysdialogtrue : function(func,ishide){
	    $(".ui-dialog-true").on("click",function(){
		  if ( ishide == 1 ){ fzui.syshide(0);}
		  (func == ''  || func == undefined) ? "" : func();
		});
	  },
	  syshide : function(type){
		var type  = (type == '' || type == undefined) ? 0 : type;
		if ( type != 0 ) {
		  $(".ui-dialog-close,.ui-dialog-btnclose").on("click",function(){
		    $(".ui-dialog").hide().remove('*');
		  });
		} else {
		  $(".ui-dialog").hide().remove('*');
		}
	  },
	  sysloading : function(hide,tips,time){
		var tips  = (tips == ''  || tips == undefined)  ? '加载中' : tips;
		var hide  = (hide == '' || hide == undefined) ? 0 : hide;
		var time  = (time == '' || time == undefined) ? 30000 : time; //time out close loading dialog
		if ( hide == 1 ) {
		  $(".ui-loading-block").hide().remove('*');
		} else {
		  $("body").append('<div class="ui-loading-block show"><div class="ui-loading-cnt"><i class="ui-loading-bright"></i><p>'+tips+'</p></div></div>');
		  setTimeout(function(){
		    if($(".ui-loading-block").length > 0) {
			  fzui.sysloading(1);
			}
		  },time);
		}
	  },
	  sysmsg : function(tips,type,time){
		var tips  = (tips == ''  || tips == undefined)  ? '提示' : tips;
		var type  = (type == ''  || type == undefined)  ? 'warn' : type; //info|warn|success
		var time  = (time == ''  || time == undefined)  ? 2000 : time;
		var id    = $(".ui-poptipssys").length + 1;
		$("body").append('<div class="ui-poptips ui-poptipssys ui-poptips-'+type+'" id="ui-poptips'+id+'" style="display:none;top:-45px;"><div class="ui-poptips-cnt"><i></i>'+tips+'</div></div>');
		$("#ui-poptips"+id).show().animate({"top":"0"},150,function(){
		  setTimeout(function(){
			 $("#ui-poptips"+id).animate({"top":"-45px"},150,function(){
			   $("#ui-poptips"+id).hide().remove("*");
			 });
		  },time);
		});
	  }
  };