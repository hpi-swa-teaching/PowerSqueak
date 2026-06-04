section navigation tests
testSectionShortcutsNavigateInPresentationMode

	5 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self selectSlideAt: 2.
	self enablePresentationMode.
	self pressKey: $n at: self slideContainer center.
	self assert: self currentSlideNumber equals: 4.
	self pressKey: $p at: self slideContainer center.
	self assert: self currentSlideNumber equals: 2
