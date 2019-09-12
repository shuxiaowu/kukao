 <div class="modal fade" id="tdkmodal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header"><button type="button" class="close btn-bhmap-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title">数据资料（TDK）</h4></div>
      <div class="modal-body">
        <table class="table">
          <tr>
           <td width="15%">标题：</td><td><input type="text" class="form-control tdk-title" value="" placeholder="请输入标题"></td>
          </tr>
          <tr>
           <td>描述：</td><td><input type="text" class="form-control tdk-des" value="" placeholder="请输入描述"></td>
          </tr>
          <tr>
           <td>关键词：</td><td><input type="text" class="form-control tdk-keyword" value="" placeholder="请输入关键词"></td>
          </tr>
          <tr>
          <input type="hidden" value="" id="tdk-table">
          <input type="hidden" value="" id="tdk-id">
           <td></td><td>{:btn(array('vals'=>'确定更新','round'=>1,'add'=>'btn-tdk','size'=>3,'scene'=>'info'))}</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
 </div>
 
 <script type="text/javascript">
  $(document).ready(function(e) {
    $(".tdkmodal").click(function(e) {
      var id     = $(this).data("id");
	  var tables = $(this).data("tables");
	  if ( id == '' || tables == '' ) {
	    swal('ID或者数据库为空~','','error'); return false;
	  }
	  $("#tdkmodal input").val('');
	  $("#tdk-id").val(id);
	  $("#tdk-table").val(tables);
	  $.post(abspath+'/Admin/ajaxTdk',{'id':id,'tables':tables},function(data){
	    if ( data.state == 1 ) {
		  $(".tdk-title").val(data.data.title);
		  $(".tdk-keyword").val(data.data.keyword);
		  $(".tdk-des").val(data.data.metades); 
		}
		$("#tdkmodal").modal('show');
	  },'json');
    });
	$(".btn-tdk").click(function(e) {
	  var tdkid    = $("#tdk-id").val();
	  var ttable   = $("#tdk-table").val();
      var ttitle   = $(".tdk-title").val();
	  var tkeyword = $(".tdk-keyword").val();
	  var tdes     = $(".tdk-des").val();
	  if ( ttitle == '' || tkeyword == '' || tdes == '' ) {
	    swal('请输入您需要更新数据','','error');
		return false; 
	  }
	  if ( tdkid == '' || ttable == '' ) {
	    swal('ID或者数据库为空~','','error'); return false;
	  }
	  $(".btn-tdk").html('<i class="fa fa-spinner fa-spin"></i> 更新中');
	  $.post(abspath+'/Admin/updateTdk',{'id':tdkid,'tables':ttable,'title':ttitle,'keyword':tkeyword,'des':tdes},function(data){
	    $(".btn-tdk").html('确定更新');
		if ( data.state == 1 ) {
		  swal('更新成功~','','success');
		  $("#tdkmodal").modal('hide');
		} else {
		  swal(data.msg,'','error');
		}
	  },'json');
    });
  });
 </script>