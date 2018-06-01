window resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: (self does: slide answerSideRatio: slide sideRatio).
	self assertIsConstantOnWindowResize: [	
		self does: slide answerSideRatio: slide sideRatio]