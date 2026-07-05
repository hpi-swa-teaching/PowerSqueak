drag and drop tests
testCancelDragShowsSlideInMiniatures

	| slide |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 2.
	self tool miniatureController beginDraggingSlide: slide.
	self tool miniatureController cancelDrag.
	self assert: (self tool miniatureController slideMiniatures anySatisfy: [:each |
		(each isKindOf: PSMiniatureRow) and: [each miniature slide == slide]])
