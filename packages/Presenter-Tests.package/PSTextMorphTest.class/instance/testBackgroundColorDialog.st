style tests
testBackgroundColorDialog

	| newPicker newColor |
	newPicker := self textField showBackgroundColorDialog.
	
	newColor := Color random.
	newPicker selectedColor: newColor.
	self assert: self textField color equals: newColor.
	
	newPicker abandon