section navigation tests
testNextSectionJumpsToNextSectionAnchor

	5 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Late' firstSlide: (self presentation slideAt: 4).
	self selectSlideAt: 1.
	self tool nextSection.
	self assert: self currentSlideNumber equals: 2.
	self tool nextSection.
	self assert: self currentSlideNumber equals: 4
