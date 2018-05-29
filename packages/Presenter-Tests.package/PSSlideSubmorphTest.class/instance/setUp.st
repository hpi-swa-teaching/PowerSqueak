running
setUp 
	
	super setUp.
	self morph: (Morph new openInWorld: self world).
	self slide: (PSSlide new openInWorld: self world).
	self slide extent: self world extent / 2.
	self morph position: self slide position + (10@10)
	