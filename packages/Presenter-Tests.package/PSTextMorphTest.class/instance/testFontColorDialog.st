style tests
testFontColorDialog

	| newPicker newColor |
	newPicker := self getNew: NewColorPickerMorph createdIn: [self textField showFontColorDialog].
	self assert: newPicker size equals: 1.
	
	newColor := Color random.
	(newPicker at: 1) selectedColor: newColor.
	self assert: self textField selectionColor equals: newColor.
	
	newPicker do: [:each | each delete]