presentation mode tests
testEnterNonInteractiveMode

	self tool enablePresentationMode.
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self assert: self slideContainer isInteractive equals: true.
	
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	self hand handleEvent: (self keystroke: Character escape at: self slideContainer center).
	self assert: self slideContainer isInteractive equals: true
	