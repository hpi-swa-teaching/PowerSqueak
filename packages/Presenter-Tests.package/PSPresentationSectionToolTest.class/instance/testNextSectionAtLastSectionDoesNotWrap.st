section navigation tests
testNextSectionAtLastSectionDoesNotWrap

	4 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self tool selectSlideAt: 4.
	self tool sectionController nextSection.
	self assert: self tool currentSlideNumber equals: 4