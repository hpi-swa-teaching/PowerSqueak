slide undo tests
testUndoDuplicateSlideRemovesDuplicate

	| originalSlideCount |
	originalSlideCount := self presentation slideCount.

	self tool duplicateCurrentSlide.
	self assert: self presentation slideCount equals: originalSlideCount + 1.

	self tool undo.
	self assert: self presentation slideCount equals: originalSlideCount