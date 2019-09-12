<extend name="common/common" />
<block name="main">
	<div class="onepage">
		<div class="articletitle"><h1>{$data.topic}</h1></div>
		<div class="date-hit">	
			时间：{$data.date}&nbsp;&nbsp;访问量：{$data.hit}
		</div>
		<div class="hui-content" style="padding:10px;">
			{$data.content}
		</div>
	</div>

</block>