slide undo tests
testUndoCreateSlideRemovesCreatedSlide

	| originalSlideCount |
	originalSlideCount := self presentation slideCount.

	self tool createSlide.
	self assert: self presentation slideCount equals: originalSlideCount + 1.

	self tool undo.

	self assert: self presentation slideCount equals: originalSlideCount