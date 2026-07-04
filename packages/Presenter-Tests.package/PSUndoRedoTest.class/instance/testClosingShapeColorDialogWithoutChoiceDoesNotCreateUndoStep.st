content styling undo tests
testClosingShapeColorDialogWithoutChoiceDoesNotCreateUndoStep

	| container oldColor |
	container := self tool contentCreationController newRectangleShape.
	oldColor := container content color.
	self tool clearCommandHistory.

	container recolor.
	self currentSlide closeColorDialog.

	self assert: container content color equals: oldColor.
	self deny: self tool canUndo