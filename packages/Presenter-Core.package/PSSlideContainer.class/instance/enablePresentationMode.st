presentation mode
enablePresentationMode 

	self previousOwner: self owner.
	DisplayScreen fullScreenOn.
	self owner removeMorph: self.
	self 
		openInWorld: self previousOwner world;
		position: 0@0;
		extent: self world extent;
		color: Color black