KindEditor.plugin('bhmap', function(K) {
	var self = this, name = 'bhmap';
	self.clickToolbar(name, function() {
	  if ($("#bhmapmodal").length > 0) {
		var url = $("#bhmapmodal").data('url');
		$(".iframebhmap").attr('src',url);
	    $("#bhmapmodal").modal('show');
	  }
	});
});