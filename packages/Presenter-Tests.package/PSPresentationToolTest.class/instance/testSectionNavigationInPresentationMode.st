slide section tests
testSectionNavigationInPresentationMode

	4 timesRepeat: [self createSlide].
	self tool
		createSectionNamed: 'Einleitung' startingAt: 1;
		createSectionNamed: 'Methoden' startingAt: 3.
	self
		selectSlideAt: 1;
		enablePresentationMode.
	self pressKey: $n at: self slideContainer center.
	self assert: self currentSlideNumber equals: 3.
	self pressKey: $p at: self slideContainer center.
	self assert: self currentSlideNumber equals: 1
