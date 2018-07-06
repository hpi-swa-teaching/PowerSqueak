presentation mode tests
testLeaveNonInteractiveMode

	self tool enablePresentationMode.
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self tool isInteractive equals: true.
	
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self hand handleEvent: (self keystroke: Character escape at: self slideContainer center).
	self assert: self tool isInteractive equals: true.
	
	self tool disablePresentationMode
	