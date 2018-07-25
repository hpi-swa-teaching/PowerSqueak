presentation mode tests
testNonInteractivetyInNonInteractiveMode

	| testMorph |
	testMorph := PSMockMorph new.
	self enablePresentationMode.
	self slideContainer currentSlide addContent: testMorph.
	self pressKey: $i at: self slideContainer center.
	
	self 
		pressKey: $a at: self slideContainer center;
		click: MouseEvent redButton at:  self slideContainer center.
	
	self 
		assert: testMorph receivedMouseEvents equals: 0;
		assert: testMorph receivedKeyboardEvents equals: 0.