as yet unclassified
testDropOnMiniatureReorders

	| dragged firstMiniature |
	2 timesRepeat: [self createSlide].
	dragged := self presentation slideAt: 3.
	firstMiniature := self miniatureOf: (self presentation slideAt: 1).
	self world doOneCycle.
	self dragndrop: MouseEvent redButton
		from: (self miniatureOf: dragged) boundsInWorld center
		to: firstMiniature boundsInWorld center.
	self
		assert: (self slides indexOf: dragged) equals: 1;
		assert: self presentation slideCount equals: 3