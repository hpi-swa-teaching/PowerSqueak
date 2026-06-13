slide styling tests
testNewTextFieldUsesCurrentSlideColor

	| color container |
	color := Color red.
	self currentSlide color: color.
	container := self tool newTextField.
	self assert: container content color equals: color