style tests
testFontColorDialog

	| newPicker newColor |
	newPicker := self textField showTextColorDialog.
	
	newColor := Color random.
	newPicker selectedColor: newColor.
	self assert: self textField selectionColor equals: newColor.
	
	newPicker abandon