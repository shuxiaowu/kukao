KindEditor.plugin('wxarticle', function(K) {
	var self = this, name = 'wxarticle';
	self.plugin.link = {
		edit : function() {
			var lang = self.lang(name + '.'),
				html = '<div style="padding:20px;">' +
					'<div class="ke-dialog-row">' +
					'<label for="keUrl" style="width:60px;">文章链接</label>' +
					'<input class="ke-input-text" type="text" id="keUrl" name="url" value="" style="width:280px;" /></div>' +
					'<div class="ke-dialog-row"">' +
					'<label for="keType" style="width:60px;">采集提示：</label>' +
					'<span class="text-warning">仅只能采集微信文章~</span>' +
					'</div>' +
					'</div>',
				dialog = self.createDialog({
					name : name,
					width : 450,
					title : self.lang(name),
					body : html,
					yesBtn : {
						name : self.lang('yes'),
						click : function(e) {
							var url = K.trim(urlBox.val());
							if (url == 'http://' || K.invalidUrl(url)) {
								alert(self.lang('invalidUrl'));
								urlBox[0].focus();
								return;
							}
							var uri = abspath+'/Files/wxarticle';
							$(".ke-dialog-yes").html('<button class="ke-button-common ke-button"><span class="fa fa-spinner fa-spin"></span> 确定</button>');
							$.post(uri,{'url':url},function(data){
							  $(".ke-dialog-yes").html('<button class="ke-button-common ke-button">确定</button>');
							  if ( data.state == 1 ) {
								if ( $(":input[name='topic']").val() =='' ) $(":input[name='topic']").val(data.topic); 
								if ( $(":input[name='author']").val() =='' ) $(":input[name='author']").val(data.author); 
							    self.insertHtml(data.content);
								self.hideDialog();
							  } else {
							    alert('未采集到有效的数据');
							  }
							},'json');
						}
					}
				}),
				div = dialog.div,
				urlBox = K('input[name="url"]', div),
				typeBox = K('select[name="type"]', div);
			urlBox.val('http://');
			var a = self.plugin.getSelectedLink();
			if (a) {
				self.cmd.range.selectNode(a[0]);
				self.cmd.select();
				urlBox.val(a.attr('data-ke-src'));
				typeBox.val(a.attr('target'));
			}
			urlBox[0].focus();
			urlBox[0].select();
		},
		'delete' : function() {
			self.exec('unlink', null);
		}
	};
	self.clickToolbar(name, self.plugin.link.edit);
});
