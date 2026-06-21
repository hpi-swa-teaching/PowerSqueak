slide undo tests
testUndoSlideBackgroundColorRestoresPreviousColor

	| oldColor newColor |
	oldColor := self currentSlide color.
	newColor := Color red.

	self currentSlide changeBackgroundColor: newColor.
	self assert: self currentSlide color equals: newColor.

	self tool undo.

	self assert: self currentSlide color equals: oldColor