slide undo tests
testUndoMoveSlideRestoresOriginalOrder

	| first second |
	self tool createSlide.
	first := self presentation slides first.
	second := self presentation slides second.

	self tool moveSlide: first to: 2.
	self assert: self presentation slides first equals: second.

	self tool undo. 
	self assert: self presentation slides first equals: first