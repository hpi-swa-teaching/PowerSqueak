presentation mode tests
testEnterNonInteractiveMode

	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self tool isInteractive equals: true.
	
	self tool enablePresentationMode.
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self tool isInteractive equals: false.
	
	self tool disablePresentationMode