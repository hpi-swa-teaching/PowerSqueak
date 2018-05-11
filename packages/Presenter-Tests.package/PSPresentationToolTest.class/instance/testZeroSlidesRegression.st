slides test
testZeroSlidesRegression

	self assert: tool slideCount = 1.
	tool deleteSlide: 1.
	self assert: tool slideCount = 1 description: 'There should never be 0 slides'