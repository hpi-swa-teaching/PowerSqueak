section navigation tests
testPreviousSectionBeforeFirstSectionDoesNotWrap

	5 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self selectSlideAt: 1.
	self tool previousSection.
	self assert: self currentSlideNumber equals: 1
