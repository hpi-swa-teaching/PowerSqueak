presentation mode tests
testNonInteractivetyInNonInteractiveMode

	| testMorph |
	testMorph := PSMorphForEventTests new.
	self tool enablePresentationMode.
	self slideContainer currentSlide addContent: testMorph.
	self pressKey: $i at: self slideContainer center.
	
	self pressKey: $a at: self slideContainer center.
	self click: MouseEvent redButton at:  self slideContainer center.
	
	self assert: testMorph receivedMouseEvents equals: 0.
	self assert: testMorph receivedKeyboardEvents equals: 0.
	
	self slideContainer disableNonInteractiveMode.
	self tool disablePresentationMode.
	testMorph abandon