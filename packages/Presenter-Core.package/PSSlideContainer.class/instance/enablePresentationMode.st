presentation mode
enablePresentationMode 

	self previousOwner: self owner.
	self owner removeMorph: self.
	self 
		occupyWorld: self previousOwner world;
		startStepping;
		color: Color black;
		showNotification: 'Press ''i'' to toggle interactivity'