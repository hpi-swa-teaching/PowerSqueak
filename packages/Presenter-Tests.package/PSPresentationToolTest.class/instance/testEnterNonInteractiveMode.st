presentation mode tests
testEnterNonInteractiveMode

	self pressKey: $i at: self slideContainer center.
	self assert: self tool isInteractive equals: true.
	
	self tool enablePresentationMode.
	self pressKey: $i at: self slideContainer center.
	self assert: self tool isInteractive equals: false.
	
	self tool disablePresentationMode