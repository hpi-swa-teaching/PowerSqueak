drag and drop tests
testBeginDraggingHidesSlideFromMiniatures

	| slide miniatures |
	2 timesRepeat: [self createSlide].
	slide := self presentation slideAt: 2.
	self tool beginDraggingSlide: slide.
	miniatures := self tool slideMiniatures
		select: [:each | each isPSMiniature
			or: [each isKindOf: PSMiniatureRow]].
	self deny: (miniatures anySatisfy: [:row |
		row miniature slide == slide])
