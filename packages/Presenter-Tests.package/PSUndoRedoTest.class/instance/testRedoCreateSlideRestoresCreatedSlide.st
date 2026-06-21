slide undo tests
testRedoCreateSlideRestoresCreatedSlide

	| originalSlideCount |
	originalSlideCount := self presentation slideCount.

	self tool createSlide.
	self tool undo.
	self tool redo.

	self assert: self presentation slideCount equals: originalSlideCount + 1