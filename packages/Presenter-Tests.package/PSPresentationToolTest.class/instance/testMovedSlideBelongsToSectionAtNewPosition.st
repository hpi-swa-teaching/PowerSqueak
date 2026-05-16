slide section tests
testMovedSlideBelongsToSectionAtNewPosition

	| slide |
	4 timesRepeat: [self createSlide].
	self tool
		createSectionNamed: 'Einleitung' startingAt: 1;
		createSectionNamed: 'Methoden' startingAt: 4.
	slide := self slides first.
	self
		selectSlideAt: 1;
		moveCurrentSlideTo: 4.
	self
		assert: self currentSlide equals: slide;
		assert: (self presentation sectionNameForSlideAt: self currentSlideNumber) equals: 'Methoden'
