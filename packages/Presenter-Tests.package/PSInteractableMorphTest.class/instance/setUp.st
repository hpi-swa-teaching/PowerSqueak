as yet unclassified
setUp

	super setUp.
	self morph: 
		(SimpleButtonMorph new 
			actionSelector: #interact; 
			target: self;
			openInWorld: self world; 
			yourself).
	self morph position: self slide position + (30 @ 30).
	self slide addContent: self morph.
	self interacted: false.
	self slide fullBounds.