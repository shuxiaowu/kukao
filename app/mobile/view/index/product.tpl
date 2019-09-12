<extend name="common/common" />
<block name="main">
	<div class="hui-wrap topnav">
		<volist name="newsType" id="obj">
			<div  class="hui-button hui-button-small hui-fl <eq name="type" value="$obj['Id']">hui-primary</eq>" style="margin:10px;"><a href="{:url('Index/product','type='.$obj['Id'])}">{$obj.topic}</a></div>
		</volist>
	</div>
	  <style>
    #list2 li{width:50%; float:left; 0px;}
    #list2 .hui-img-list-content{padding:5px; padding-bottom:10px;}
    #list2 h1{font-size:14px;}
    </style>
	<div class="hui-img-list" id="list2" style="padding:10px 5px;">
		<ul>
			<volist name="news" id="obj">
				<li>
					<a href="{:url('Index/productarticle','Id='.$obj['Id'])}">
						<img src="{:UPIC($obj['pic'])}" style="max-height:100px;">
						<div class="hui-img-list-content">
							<h1 style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">{$obj.topic}</h1>
							<p style="text-overflow: ellipsis;white-space: nowrap;overflow: hidden;">{$obj.intro}</p>
						</div>
					</a>
				</li>
			</volist>
		</ul>
	</div>
	 <div class="paged">
            {$pageshow}
          </div>
</block>