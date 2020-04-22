window resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self currentSlide.
	self 
		assert: (self does: slide answerSideRatio: slide class sideRatio);
		assert: [self does: slide answerSideRatio: slide class sideRatio] onResizeOf: self window