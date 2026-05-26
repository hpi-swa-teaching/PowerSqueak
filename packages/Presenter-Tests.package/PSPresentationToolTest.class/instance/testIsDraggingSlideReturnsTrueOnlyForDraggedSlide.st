drag and drop tests
testIsDraggingSlideReturnsTrueOnlyForDraggedSlide

	| slideA slideB |
	2 timesRepeat: [self createSlide].
	slideA := self presentation slideAt: 1.
	slideB := self presentation slideAt: 2.
	self tool beginDraggingSlide: slideA.
	self
		assert: (self tool isDraggingSlide: slideA);
		deny: (self tool isDraggingSlide: slideB).
	self tool cancelDrag.
	self deny: (self tool isDraggingSlide: slideA)
