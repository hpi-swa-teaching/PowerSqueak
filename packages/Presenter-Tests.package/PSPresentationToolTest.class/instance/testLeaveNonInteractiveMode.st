presentation mode tests
testLeaveNonInteractiveMode

	self tool enablePresentationMode.
	self pressKey: $i at: self slideContainer center.
	self pressKey: $i at: self slideContainer center.
	self assert: self tool isInteractive equals: true.
	
	self pressKey: $i at: self slideContainer center.
	self pressKey: Character escape at: self slideContainer center.
	self assert: self tool isInteractive equals: true.
	
	self tool disablePresentationMode
	