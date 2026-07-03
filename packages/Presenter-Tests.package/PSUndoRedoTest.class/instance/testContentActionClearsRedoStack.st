content undo tests
testContentActionClearsRedoStack

	self tool createSlide.
	self tool undo.
	self assert: self tool canRedo.

	self tool contentCreationController newTextField.

	self deny: self tool canRedo