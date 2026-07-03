content undo tests
testUndoDeleteContentRestoresIt

	| container |
	container := self tool contentCreationController newTextField.

	container deleteContent.
	self deny: (self currentSlide submorphs includes: container).

	self tool undo.

	self assert: (self currentSlide submorphs includes: container)