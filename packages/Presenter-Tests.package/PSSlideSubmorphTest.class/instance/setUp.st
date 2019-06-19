running
setUp 
	
	super setUp.
	self slide addContent: self morph.
	self container: self morph owner.
	self slideContainer removeSelection