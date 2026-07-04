content styling undo tests
testUndoRedoTextFieldBorderWidth

	| container oldWidth newWidth |
	container := self tool contentCreationController newTextField.
	oldWidth := container content borderWidth.
	newWidth := oldWidth + 3.

	container changeContentBorderWidth: newWidth.
	self assert: container content borderWidth equals: newWidth.

	self tool undo.
	self assert: container content borderWidth equals: oldWidth.

	self tool redo.
	self assert: container content borderWidth equals: newWidth