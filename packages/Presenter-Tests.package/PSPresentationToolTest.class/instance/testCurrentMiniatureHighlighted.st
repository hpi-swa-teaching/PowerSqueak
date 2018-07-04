miniature view tests
testCurrentMiniatureHighlighted

	5 timesRepeat: [self tool createSlide].
	self tool selectSlideNumber: 5.
	self assert: self tool currentMiniature isHighlighted