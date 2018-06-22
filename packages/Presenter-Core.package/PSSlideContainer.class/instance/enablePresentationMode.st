presentation mode
enablePresentationMode 

	self previousOwner: self owner.
	self owner removeMorph: self.
	self 
		openInWorld: self previousOwner world;
		position: 0@0;
		extent: self world extent;
		color: Color black;
		showNotification: 'Press ''i'' to toggle interactivity'