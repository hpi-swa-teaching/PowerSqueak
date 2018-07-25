presentation mode tests
testEnterNonInteractiveMode
	
	self enablePresentationMode.
	self pressKey: $i at: self slideContainer center.
	self assert: self isInteractive equals: false.
	
	self tool disablePresentationMode