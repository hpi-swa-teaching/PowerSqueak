drag and drop tests
testDragOutDoesNotDeleteSlide

	| slide |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 1.
	self world doOneCycle.
	self dragndrop: MouseEvent redButton
		from: (self miniatureOf: slide) boundsInWorld center
		to: self window boundsInWorld bottomRight + (20 @ 20).
	self
		assert: (self slides includes: slide);
		assert: self presentation slideCount equals: 3