as yet unclassified
testDropSlideSnapsToNearestSlot

	| dragged remaining midY |
	2 timesRepeat: [self createSlide].
	dragged := self presentation slideAt: 1.
	self tool miniatureController beginDraggingSlide: dragged.
	self world doOneCycle.
	remaining := {self presentation slideAt: 2. self presentation slideAt: 3}
		collect: [:each | self tool miniatureController miniatureOf: each].
	midY := ((remaining first boundsInWorld center y)
		+ (remaining last boundsInWorld center y)) / 2.
	self tool miniatureController dropSlide: dragged at: 0 @ midY.
	self assert: (self slides indexOf: dragged) equals: 2