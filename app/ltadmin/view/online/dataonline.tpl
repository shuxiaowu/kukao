<extend name="public/common" />

<block name="main">

 <div class="pubmain">

 <div class="panel-heading">

  <h3 class="panel-title pull-left">访问统计</h3>

  <div class="pull-right mar10">

   <div class="btn-group">

   {:btn(array('vals'=>'最近7天','size'=>3,'icon'=>'calendar','scene'=>$scene[0],'round'=>1,'url'=>url('Online/dataonline','act=1&chart='.$chartindex)))}

   {:btn(array('vals'=>'最近30天','size'=>3,'icon'=>'calendar','scene'=>$scene[1],'url'=>url('Online/dataonline','act=2&chart='.$chartindex)))}

   {:btn(array('vals'=>'本月','size'=>3,'icon'=>'calendar','scene'=>$scene[2],'url'=>url('Online/dataonline','act=3&chart='.$chartindex)))}

   {:btn(array('vals'=>'折线图','size'=>3,'faicon'=>'line-chart','scene'=>$chartscene[0],'url'=>url('Online/dataonline','chart=1&act='.$act)))}

   {:btn(array('vals'=>'柱型图','size'=>3,'faicon'=>'bar-chart','scene'=>$chartscene[1],'url'=>url('Online/dataonline','chart=2&act='.$act)))}

   {:btn(array('vals'=>'面积图','size'=>3,'faicon'=>'area-chart','round'=>1,'scene'=>$chartscene[2],'url'=>url('Online/dataonline','chart=3&act='.$act)))}

   </div>

  </div>

 </div>



 <div class="panel-body">


  <form name="pubserch" method="post" action="">

  &nbsp;时间段：<input type="text" value="{$sday}" name="sday" class="textsort input-date">

  至&nbsp;<input type="text" value="{$eday}" name="eday" class="textsort input-date">

  &nbsp;{:btn(array('vals'=>'查看','type'=>'submit','icon'=>'search','name'=>'searchdata','round'=>1,'scene'=>'primary'))}

  </form>



  <script type="text/javascript">

   $(function () {

	 $('#chartcontainer').highcharts({

			title: {

				text: '{$subtitle}',

				x: -20

			},

			chart: {

               type: '{$type}'

            },

			subtitle: {

				text: '',

				x: -20

			},

			xAxis: {

				categories: [{$chartx}]

			},

			yAxis: {

				title: {

					text: '数量 (个)'

				},

				plotLines: [{

					value: 0,

					width: 1,

					color: '#808080'

				}]

			},

			tooltip: {

				valueSuffix: '个'

			},

			legend: {

				layout: 'vertical',

				align: 'right',

				verticalAlign: 'middle',

				borderWidth: 0

			},

			series: [{

				name: 'PV量',

				data: [{$pvcount}]

			}, {

				name: 'IP数',

				data: [{$ipcount}]

			}]

	});

 });

 </script>

 <script src="__js__/highcharts.js"></script>

 <div id="chartcontainer" style="min-width: 310px; height: 400px; margin: 0 auto; clear:both;"></div>

 

 <div class="ui-block">&nbsp;</div>

 <div class="pubmain">

  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">

   <tr class="active">

     <td width="120" align="left" valign="middle">统计时间</td>

     <td align="left" valign="middle"><span{:tooltip('访客在一次访问中，平均打开网站的时长。即每次访问中，打开第一个页面到关闭最后一个页面的平均值，打开一个页面时计算打开关闭的时间差。','auto')}>平均访问时长 {:icon('info-sign')}</span></td>

     <td width="200" align="left" valign="middle"{:tooltip('当天内点击连最多模块','auto')}>访问量最多 {:icon('info-sign')}</td>

     <td width="100" align="center" valign="middle"{:tooltip('即通常说的Page View(PV)，用户每打开一个网站页面就被记录1次。用户多次打开同一页面，浏览量值累计。','auto')}>浏览量/PV {:icon('info-sign')}</td>

     <td width="100" align="center" valign="middle"{:tooltip('您网站的独立访问ip数')}>IP数 {:icon('info-sign')}</td>

     <td width="100" align="center" valign="middle">操作</td>

   </tr>

   <volist name="data" id="obj">

   <tr>

     <td align="left" valign="middle">{$obj['weekday']}</td>

     <td align="left" valign="middle">{$obj['time']?:'00:00:00'}</td>

     <td align="left" valign="middle">{$obj['action']}</td>

     <td align="center" valign="middle">{$obj['pv']}</td>

     <td align="center" valign="middle">{$obj['ipcount']}</td>

     <td align="center" valign="middle">{:btn(array('vals'=>'详细','round'=>1,'faicon'=>'bar-chart-o','scene'=>'primary','url'=>url('Online/onlinedetail','day='.$obj['day'])))}</td>

   </tr>

   </volist>

   </table>

  </div>

 </div>

 </div>

</block>