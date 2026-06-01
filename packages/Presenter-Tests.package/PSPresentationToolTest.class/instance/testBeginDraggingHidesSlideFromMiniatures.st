drag and drop tests
testBeginDraggingHidesSlideFromMiniatures

	| slide rows |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 2.
	self tool beginDraggingSlide: slide.
	rows := self tool slideMiniatures select: [:each | each isKindOf: PSMiniatureRow].
	self deny: (rows anySatisfy: [:row | row miniature slide == slide])
