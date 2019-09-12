<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <div class="panel-body">
  <div class="btn-group">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','round'=>1,'url'=>url('system/sysmod')))}
   {:btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>url('system/syscompany')))}
   {:btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'primary','url'=>url('system/syswater')))}
   {:btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'default','round'=>1,'url'=>url('system/sysupload')))}
  </div>
  <div class="ui-block"></div>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">水印图片：</td>
        <td height="42" align="left">{:uppic(array('pic'=>$data['waterpic'],'tips'=>'请上传.gif,.png,.jpg格式的水印图片，图片大小不要过大。','iswater'=>1,'choice'=>1,'iscrop'=>0))}</td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印位置：</td>
        <td height="42" align="left">
         <div class="waterpos">
          <input type="hidden" value="{$data['waterpos']}" name="waterpos">
          <div data-id="1" <if condition="$data['waterpos'] eq 1">class="selected"</if>>左上</div>
          <div data-id="2" <if condition="$data['waterpos'] eq 2">class="selected"</if>>正上</div>
          <div data-id="3" <if condition="$data['waterpos'] eq 3">class="selected"</if>>右上</div>
          <div data-id="4" <if condition="$data['waterpos'] eq 4">class="selected"</if>>左中</div>
          <div data-id="5" <if condition="$data['waterpos'] eq 5">class="selected"</if>>中间</div>
          <div data-id="6" <if condition="$data['waterpos'] eq 6">class="selected"</if>>右中</div>
          <div data-id="7" <if condition="$data['waterpos'] eq 7">class="selected"</if>>左下</div>
          <div data-id="8" <if condition="$data['waterpos'] eq 8">class="selected"</if>>中下</div>
          <div data-id="9" <if condition="$data['waterpos'] eq 9">class="selected"</if>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印透明值：</td>
        <td height="42" align="left">{:inputs(array('name'=>'wateralpha','val'=>$data['wateralpha'],'tips'=>'水印透明度，1-100的整数','icon'=>'tint','width'=>'10'))}</td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字：</td>
        <td height="42" align="left">{:inputs(array('name'=>'fonttext','val'=>$data['fonttext'],'tips'=>'水印文字，建议用字母或文字','units'=>'文','width'=>'20'))}</td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字大小：</td>
        <td height="42" align="left">{:inputs(array('name'=>'fontsize','val'=>$data['fontsize'],'tips'=>'水印文字的大小','units'=>'px','width'=>'10'))}</td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字颜色：</td>
        <td height="42" align="left">
         <input type="text" value="{$data['fontcolor']}" name="fontcolor" class="textsort colorselect"{:tooltip('水印文字的颜色')} style="width:120px;">
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">字体水印样式：</td>
        <td height="42" align="left">
         <div class="text-warning">{:icon('info-sign')} 从左到右 分别是水印字体A~G的水印样式，字体(B~G)由 THINKPHP 提供，样式生成 字体大小皆为：10px 颜色：#1ea5d7。</div>
         <div class="waterview">
          <input type="hidden" value="{$data['facetype']}" name="facetype">
          <div data-id="0" class="waterdemo <if condition="$data['facetype'] eq 0">selected</if>"{:tooltip('字体样式A')}><img src="__img__/water/A.jpg"></div>
          <div data-id="1" class="waterdemo <if condition="$data['facetype'] eq 1">selected</if>"{:tooltip('字体样式B')}><img src="__img__/water/B.jpg"></div>
          <div data-id="2" class="waterdemo <if condition="$data['facetype'] eq 2">selected</if>"{:tooltip('字体样式C')}><img src="__img__/water/C.jpg"></div>
          <div data-id="3" class="waterdemo <if condition="$data['facetype'] eq 3">selected</if>"{:tooltip('字体样式D')}><img src="__img__/water/D.jpg"></div>
          <div data-id="4" class="waterdemo <if condition="$data['facetype'] eq 4">selected</if>"{:tooltip('字体样式E')}><img src="__img__/water/E.jpg"></div>
          <div data-id="5" class="waterdemo <if condition="$data['facetype'] eq 5">selected</if>"{:tooltip('字体样式F')}><img src="__img__/water/F.jpg"></div>
          <div data-id="6" class="waterdemo <if condition="$data['facetype'] eq 6">selected</if>"{:tooltip('字体样式G')}><img src="__img__/water/G.jpg"></div>
          <div data-id="7" class="waterdemo <if condition="$data['facetype'] eq 7">selected</if>"{:tooltip('字体样式H')}><img src="__img__/water/H.jpg"></div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字位置：</td>
        <td height="42" align="left">
        <div class="waterpos">
          <input type="hidden" value="{$data['fontpos']}" name="fontpos">
          <div data-id="1" <if condition="$data['fontpos'] eq 1">class="selected"</if>>左上</div>
          <div data-id="2" <if condition="$data['fontpos'] eq 2">class="selected"</if>>正上</div>
          <div data-id="3" <if condition="$data['fontpos'] eq 3">class="selected"</if>>右上</div>
          <div data-id="4" <if condition="$data['fontpos'] eq 4">class="selected"</if>>左中</div>
          <div data-id="5" <if condition="$data['fontpos'] eq 5">class="selected"</if>>中间</div>
          <div data-id="6" <if condition="$data['fontpos'] eq 6">class="selected"</if>>右中</div>
          <div data-id="7" <if condition="$data['fontpos'] eq 7">class="selected"</if>>左下</div>
          <div data-id="8" <if condition="$data['fontpos'] eq 8">class="selected"</if>>中下</div>
          <div data-id="9" <if condition="$data['fontpos'] eq 9">class="selected"</if>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">开启水印功能：</td>
        <td height="42" align="left">{:checkbox($data['iswater'],0,'iswater')}<span class="text-warning"> &nbsp;注：勾选表示开启水印功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'tint','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
    <script type="text/javascript">
     $(".waterpos div,.waterview div").click(function(e) {
       var id = $(this).data("id");
	   $(this).parent().find("input").val(id);
	   $(this).parent().find("div").removeClass("selected");
	   $(this).addClass("selected"); 
     });
    </script>
 </div>
 </div>
</block>