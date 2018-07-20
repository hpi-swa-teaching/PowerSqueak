running
setUp 
	
	super setUp.
	self morph: (Morph new openInWorld: self world).
	self morph position: self slide position + (30@30)
	