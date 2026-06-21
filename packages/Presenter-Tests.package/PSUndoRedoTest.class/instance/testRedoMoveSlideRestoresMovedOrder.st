slide undo tests
testRedoMoveSlideRestoresMovedOrder

	| first second |
	self tool createSlide.
	first := self presentation slides first.
	second := self presentation slides second.

	self tool moveSlide: first to: 2.
	self tool undo.
	self tool redo.

	self assert: self presentation slides first equals: second