slide section tests
testNextSection

	4 timesRepeat: [self createSlide].
	self tool
		createSectionNamed: 'Einleitung' startingAt: 1;
		createSectionNamed: 'Methoden' startingAt: 3.
	self selectSlideAt: 1.
	self tool nextSection.
	self assert: self currentSlideNumber equals: 3
