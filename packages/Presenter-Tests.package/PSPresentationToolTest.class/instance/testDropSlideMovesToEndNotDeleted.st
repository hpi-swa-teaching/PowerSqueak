as yet unclassified
testDropSlideMovesToEndNotDeleted

	| dragged |
	2 timesRepeat: [self createSlide].
	dragged := self presentation slideAt: 1.
	self tool miniatureController beginDraggingSlide: dragged.
	self world doOneCycle.
	self tool miniatureController dropSlide: dragged at: 0 @ 1000000.
	self
		assert: (self slides indexOf: dragged) equals: 3;
		assert: (self slides includes: dragged);
		assert: self presentation slideCount equals: 3