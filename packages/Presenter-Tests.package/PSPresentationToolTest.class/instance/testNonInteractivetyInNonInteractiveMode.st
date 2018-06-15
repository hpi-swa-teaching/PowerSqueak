presentation mode tests
testNonInteractivetyInNonInteractiveMode

	| testMorph |
	testMorph := PSMorphForEventTests new.
	self tool enablePresentationMode.
	self slideContainer currentSlide addMorph: testMorph.
	self hand handleEvent: (self keystroke: $i at: self slideContainer center).
	
	self hand handleEvent: (self keystroke: $a at: self slideContainer center).
	self hand handleEvent: (self redMouseDownAt: self slideContainer center).
	
	self assert: testMorph receivedMouseEvents equals: 0.
	self assert: testMorph receivedKeyboardEvents equals: 0.
	
	testMorph abandon