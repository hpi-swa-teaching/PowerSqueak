drag and drop tests
testCancelDragShowsSlideInMiniatures

	| slide |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 2.
	self tool beginDraggingSlide: slide.
	self tool cancelDrag.
	self assert: (self tool slideMiniatures anySatisfy: [:each |
		(each isKindOf: PSMiniatureRow) and: [each miniature slide == slide]])
