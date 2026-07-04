content styling undo tests
testUndoRedoShapeFillColor

	| container oldColor newColor |
	container := self tool contentCreationController newRectangleShape.
	oldColor := container content color.
	newColor := Color blue.

	container changeContentColor: newColor.
	self assert: container content color equals: newColor.

	self tool undo.
	self assert: container content color equals: oldColor.

	self tool redo.
	self assert: container content color equals: newColor