content styling undo tests
testUndoRedoTextFieldBorderColor

	| container oldColor newColor |
	container := self tool contentCreationController newTextField.
	oldColor := container content borderColor.
	newColor := Color green.

	container changeContentBorderColor: newColor.
	self assert: container content borderColor equals: newColor.

	self tool undo.
	self assert: container content borderColor equals: oldColor.

	self tool redo.
	self assert: container content borderColor equals: newColor