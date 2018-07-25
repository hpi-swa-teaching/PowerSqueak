window resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self currentSlide.
	self 
		assert: (self does: slide answerSideRatio: slide sideRatio);
		assert: [self does: slide answerSideRatio: slide sideRatio] onResizeOf: self window