<extend name="common/common" />
<block name="main">
	<div class="hui-wrap topnav">
		<volist name="datatype" id="obj">
		 	<div  class="hui-button hui-button-small hui-fl <eq name="Id" value="$obj['Id']">hui-primary</eq>" style="margin:10px;"><a href="{:url('Index/about','Id='.$obj['Id'])}">{$obj.topic}</a></div>
		 </volist>
	</div>
	<div class="hui-content" style="padding:10px;">
		{$data.content}
	</div>
</block>