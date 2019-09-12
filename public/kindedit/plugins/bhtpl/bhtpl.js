KindEditor.plugin('bhtpl', function(K) {
	var self = this, name = 'bhtpl';
	self.clickToolbar(name, function() {
	  if ($("#bhtpl").length > 0) {
	    $("#bhtpl").modal('show');
	  }
	});
});