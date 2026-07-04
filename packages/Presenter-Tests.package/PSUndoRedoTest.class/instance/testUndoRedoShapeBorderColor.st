content styling undo tests
testUndoRedoShapeBorderColor

	| container oldColor newColor |
	container := self tool contentCreationController newCircleShape.
	oldColor := container content borderColor.
	newColor := Color yellow.

	container changeContentBorderColor: newColor.
	self assert: container content borderColor equals: newColor.

	self tool undo.
	self assert: container content borderColor equals: oldColor.

	self tool redo.
	self assert: container content borderColor equals: newColor