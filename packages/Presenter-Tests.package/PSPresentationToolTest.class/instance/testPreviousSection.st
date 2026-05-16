slide section tests
testPreviousSection

	4 timesRepeat: [self createSlide].
	self tool
		createSectionNamed: 'Einleitung' startingAt: 1;
		createSectionNamed: 'Methoden' startingAt: 3.
	self selectSlideAt: 4.
	self tool previousSection.
	self assert: self currentSlideNumber equals: 1
