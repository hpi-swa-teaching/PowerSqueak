content styling undo tests
testUndoRedoTextFieldFillColor

	| container oldColor newColor |
	container := self tool contentCreationController newTextField.
	oldColor := container content color.
	newColor := Color red.

	container changeContentColor: newColor.
	self assert: container content color equals: newColor.

	self tool undo.
	self assert: container content color equals: oldColor.

	self tool redo.
	self assert: container content color equals: newColor