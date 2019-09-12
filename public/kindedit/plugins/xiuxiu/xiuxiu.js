KindEditor.plugin('xiuxiu', function(K) {
	var self = this, name = 'xiuxiu';
	self.clickToolbar(name, function() {
	  if ($("#meituxiuxiumodal").length > 0) {
		var url = $("#meituxiuxiumodal").data('url');
		$(".iframexiuxiu").attr('src',url);
	    $("#meituxiuxiumodal").modal('show');
	  }
	});
});