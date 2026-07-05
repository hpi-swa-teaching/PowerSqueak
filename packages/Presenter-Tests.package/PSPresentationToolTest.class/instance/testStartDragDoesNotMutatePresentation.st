drag and drop tests
testStartDragDoesNotMutatePresentation

	| slide miniature beforeCount |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 1.
	miniature := self tool miniatureController miniatureOf: slide.
	beforeCount := self presentation slideCount.
	miniature startDrag: (self mouse: 4 downAt: 0 @ 0).
	self
		assert: self presentation slideCount equals: beforeCount;
		assert: (self presentation slides includes: slide)
