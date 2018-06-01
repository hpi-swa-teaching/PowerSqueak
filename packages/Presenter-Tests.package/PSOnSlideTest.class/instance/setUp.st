as yet unclassified
setUp 

	super setUp.
	self slide: (PSSlide new openInWorld: self world).
	self slide extent: self world extent / 2