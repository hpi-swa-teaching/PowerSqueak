miniature view tests
testCurrentMiniatureHighlighted

	5 timesRepeat: [self createSlide].
	self 
		selectSlideAt: 5;
		assert: self tool currentMiniature isHighlighted