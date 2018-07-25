style tests
testFontColorDialog

	| newPicker newColor |
	newPicker := self textField showFontColorDialog.
	
	newColor := Color random.
	newPicker selectedColor: newColor.
	self assert: self textField selectionColor equals: newColor.
	
	newPicker abandon