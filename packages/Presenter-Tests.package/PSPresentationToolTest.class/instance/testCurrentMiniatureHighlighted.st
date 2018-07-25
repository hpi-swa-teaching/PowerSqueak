miniature view tests
testCurrentMiniatureHighlighted

	5 timesRepeat: [self createSlide].
	self 
		selectSlideNumber: 5;
		assert: self tool currentMiniature isHighlighted