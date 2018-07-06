resizing
dragTopLeftEvent: evt fromHandle: handle
	
	self extentTopLeft: (self resizeFractionsOf: evt)