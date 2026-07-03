content undo tests
testRedoDeleteContentRemovesItAgain

	| container |
	container := self tool contentCreationController newTextField.

	container deleteContent.
	self tool undo.
	self tool redo.

	self deny: (self currentSlide submorphs includes: container)