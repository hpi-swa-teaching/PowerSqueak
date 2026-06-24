as yet unclassified
testDropSlideMovesToFront

	| dragged aboveFirst |
	2 timesRepeat: [self createSlide].
	dragged := self presentation slideAt: 3.
	self tool beginDraggingSlide: dragged.
	self world doOneCycle.
	aboveFirst := (self miniatureOf: (self presentation slideAt: 1)) boundsInWorld top.
	self tool dropSlide: dragged at: 0 @ aboveFirst.
	self assert: (self slides indexOf: dragged) equals: 1