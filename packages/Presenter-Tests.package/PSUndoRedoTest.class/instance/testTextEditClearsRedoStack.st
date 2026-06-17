text undo tests
testTextEditClearsRedoStack

	| textField |
	self tool createSlide.
	self tool undo.
	self assert: self tool canRedo.

	textField := self tool newTextField content.
	textField textEdited: 'New text'.

	self deny: self tool canRedo