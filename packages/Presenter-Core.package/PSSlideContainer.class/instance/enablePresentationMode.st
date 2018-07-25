presentation mode
enablePresentationMode 

	self previousOwner: self owner.
	self 
		occupyWorld: self world;
		startStepping;
		color: Color black;
		showNotification: 'Press ''i'' to toggle interactivity'