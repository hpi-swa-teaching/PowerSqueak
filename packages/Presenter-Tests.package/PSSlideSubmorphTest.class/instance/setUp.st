running
setUp 
	
	super setUp.
	self morph: (Morph new openInWorld: self world).
	self slide: self tool currentSlide.
	self morph position: self slide position + (10@10)
	