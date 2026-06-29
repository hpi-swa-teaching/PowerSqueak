slide undo tests
testRedoInsertShapeRestoresIt

	| container |
	container := self tool newRectangleShape.
	self tool undo.
	self deny: (self currentSlide submorphs includes: container).
	self tool redo.
	self assert: (self currentSlide submorphs includes: container)