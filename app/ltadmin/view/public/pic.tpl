 <notempty name="upload">
  <div class="modal fade bh-picture" id="bh-picture">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">系统图片库</h4>
          </div>
          <div class="modal-body" style="margin:0; padding:0;">
            <div class="row modal-picture">
              
              <div class="col-md-2 col-sm-3 col-xs-4 picture-sidebar">
                <div style="height:auto; overflow:hidden;">
                <div class="list-group">
                  <php>
                   $filelist = model('File')->getfilepath();
                   if ( $filelist ) {
                     foreach( $filelist as $fkey=>$fval ) {
                       echo '<a href="javascript:void(0)" class="list-group-item picture-litype" data-path="'.$fval['file'].'">'.$fval['file'].' <span class="badge">'.$fval['count'].'</span></a>';
                     }
                   }
                   $piclist  = model('File')->getpic();
                  </php> 
                </div> 
                </div>
              </div>
              
              <div class="col-md-10 col-sm-9 col-xs-8 picture-main">
                <div style="height:auto; overflow:hidden;">
                <div class="picture-mblock">
                <php>
                 if ( $piclist !='' && count($piclist['sdata']) > 0 ) {
                   foreach( $piclist['sdata'] as $pkey=>$pval ) {
                     echo ($pval['spic']!='') ? '<div class="picdiv picture-fname" data-path="'.$pval['spic'].'"><img src="'.ispic($pval['spic']).'" data-action="zooms"><p title="'.$pval['pic'].'">'.$pval['pic'].'</p><div class="pic-active"></div></div>' : '';
                   }
                 }
                </php>
                </div>
                <div style=" height:10px; clear:both;"></div>
                <div class="picture-pagelist">{$piclist['pagelist']?:''}</div>
              </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="pull-left"><div class="up-progress" style="margin:10px auto;"><div class="up-bar"></div></div></div>
            <input type="hidden" value="" id="picture-file">
            <input type="hidden" value="" id="picture-path">
            <button type="button" class="btn btn-default btn-sm btn-rounded" data-dismiss="modal">{:icon("off")} 关闭</button>
            <button type="button" class="btn btn-primary btn-sm btn-rounded btn-choice-picture">{:icon("picture")} 选择图片</button>
          </div>
        </div>
      </div>
      <script src="__js__/jqthumb.js" type="text/javascript"></script>
      <script>
	   $(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	   $('.picture-sidebar').perfectScrollbar();
	   $('.picture-main').perfectScrollbar();
      </script>
    </div>
 </notempty>