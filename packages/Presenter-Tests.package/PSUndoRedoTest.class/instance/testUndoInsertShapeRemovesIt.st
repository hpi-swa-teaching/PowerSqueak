slide undo tests
testUndoInsertShapeRemovesIt

	| container |
	container := self tool contentCreationController newRectangleShape.
	self assert: (self currentSlide submorphs includes: container).
	self tool undo.
	self deny: (self currentSlide submorphs includes: container)