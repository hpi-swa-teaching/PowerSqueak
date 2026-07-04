content styling undo tests
testContentStyleChangeClearsRedoStack

	| container |
	self tool createSlide.
	self tool undo.
	self assert: self tool canRedo.

	container := self tool contentCreationController newTextField.
	container changeContentColor: Color red.

	self deny: self tool canRedo