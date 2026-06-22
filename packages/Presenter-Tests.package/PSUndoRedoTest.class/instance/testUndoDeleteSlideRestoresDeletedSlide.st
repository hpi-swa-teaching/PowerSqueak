slide undo tests
testUndoDeleteSlideRestoresDeletedSlide

	| deletedSlide |
	self tool createSlide.
	deletedSlide := self currentSlide.

	self tool deleteSlide.
	self deny: (self presentation slides includes: deletedSlide).

	self tool undo.
	self assert: (self presentation slides includes: deletedSlide)