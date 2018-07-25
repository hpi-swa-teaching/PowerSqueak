presentation mode tests
testEnterNonInteractiveMode
	
	self enablePresentationMode.
	self 
		pressKey: $i at: self slideContainer center;
		deny: self isInteractive.
	
	self tool disablePresentationMode