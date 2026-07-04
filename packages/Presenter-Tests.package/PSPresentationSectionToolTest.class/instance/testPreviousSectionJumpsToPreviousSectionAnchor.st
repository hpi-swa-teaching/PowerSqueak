section navigation tests
testPreviousSectionJumpsToPreviousSectionAnchor

	5 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self selectSlideAt: 6.
	self tool previousSection.
	self assert: self currentSlideNumber equals: 4.
	self tool previousSection.
	self assert: self currentSlideNumber equals: 2
