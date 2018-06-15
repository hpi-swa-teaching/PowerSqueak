presentation mode tests
testEnterInteractiveMode

	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self slideContainer isInteractive equals: true.
	
	self tool enablePresentationMode.
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self slideContainer isInteractive equals: false