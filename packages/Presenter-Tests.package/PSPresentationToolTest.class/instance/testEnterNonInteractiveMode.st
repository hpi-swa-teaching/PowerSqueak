presentation mode tests
testEnterNonInteractiveMode
	
	self tool enablePresentationMode.
	self 
		pressKey: $i at: self slideContainer center;
		deny: self tool isInteractive.
	
	self tool disablePresentationMode