miniature view tests
testCurrentMiniatureHighlighted

	5 timesRepeat: [self createSlide].
	self tool selectSlideNumber: 5.
	self assert: self tool currentMiniature isHighlighted