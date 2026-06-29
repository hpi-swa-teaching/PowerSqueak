extra coverage tests
testChangeSlideColorCommandExecuteUnexecute
	| command originalColor |
	originalColor := self currentSlide color.
	command := PSChangeSlideColorCommand new.
	command slide: self currentSlide; newColor: Color red; oldColor: originalColor.
	command execute.
	self assert: self currentSlide color equals: Color red.
	command unexecute.
	self assert: self currentSlide color equals: originalColor
