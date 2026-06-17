content undo tests
testUndoInsertTextFieldRemovesIt

	| container |
	container := self tool newTextField.

	self assert: (self currentSlide submorphs includes: container).

	self tool undo.

	self deny: (self currentSlide submorphs includes: container)