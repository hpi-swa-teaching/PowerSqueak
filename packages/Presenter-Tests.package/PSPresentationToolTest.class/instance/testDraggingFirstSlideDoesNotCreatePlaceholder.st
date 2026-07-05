drag and drop tests
testDraggingFirstSlideDoesNotCreatePlaceholder

	| slide miniature event |
	slide := self presentation slideAt: 1.
	miniature := self tool miniatureController miniatureOf: slide.
	event := self mouse: 4 downAt: 0 @ 0.
	miniature startDrag: event.
	self
		assert: self presentation slideCount equals: 1;
		assert: (self presentation slides includes: slide).
	self tool miniatureController cancelDrag.
	self assert: self presentation slideCount equals: 1
