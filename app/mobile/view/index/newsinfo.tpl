<extend name="common/common" />
<block name="main">
	<div class="hui-wrap topnav">
		<volist name="newsType" id="obj">
		 	<div  class="hui-button hui-button-small hui-fl <eq name="type" value="$obj['Id']">hui-primary</eq>" style="margin:10px;"><a href="{:url('Index/newsinfo','type='.$obj['Id'])}">{$obj.topic}</a></div>
		 </volist>
	</div>
	 <div class="hui-list">
    	<ul>
    		<volist name="news" id="obj">
    		<li>
    			<a href="{:url('Index/newsarticle','Id='.$obj['Id'])}">
		    		<div class="hui-list-text">
		    			<div class="hui-list-text-content">
		    			{$obj.topic}
		    			</div>
		    			<div class="hui-list-info">
		    				{$obj.date|subtext=0,11}
		    			</div>
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