presentation mode
enablePresentationMode 

	self previousOwner: self owner.
	self 
		removeSelection;
		occupyWorld: self world;
		startStepping;
		color: Color black;
		showTimer;
		showNotification: 'Press ''i'' interactivity, ''h'' pause timer, ''t'' timer on/off'