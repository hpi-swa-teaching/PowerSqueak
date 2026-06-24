slide undo tests
testRedoSlideBackgroundColorRestoresNewColor

	| newColor |
	newColor := Color red.

	self currentSlide color: newColor.
	self tool undo.
	self tool redo.

	self assert: self currentSlide color equals: newColor