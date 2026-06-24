content undo tests
testRedoDeleteContentRemovesItAgain

	| container |
	container := self tool newTextField.

	container deleteContent.
	self tool undo.
	self tool redo.

	self deny: (self currentSlide submorphs includes: container)