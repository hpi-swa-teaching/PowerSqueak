slide undo tests
testRedoMiniatureDropRestoresMovedOrder

	| first second |
	self tool createSlide.
	first := self presentation slides first.
	second := self presentation slides second.
	self tool miniatureController beginDraggingSlide: first.
	self tool miniatureController dropSlide: first at: 0 @ 1000000.
	self tool undo.
	self tool redo.
	self assert: self presentation slides first equals: second