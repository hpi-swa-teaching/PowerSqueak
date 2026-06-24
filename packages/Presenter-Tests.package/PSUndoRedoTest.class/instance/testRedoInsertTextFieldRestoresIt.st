content undo tests
testRedoInsertTextFieldRestoresIt

	| container |
	container := self tool newTextField.

	self tool undo.
	self tool redo.

	self assert: (self currentSlide submorphs includes: container)