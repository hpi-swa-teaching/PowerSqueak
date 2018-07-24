style tests
testBackgroundColorDialog

	| newPicker newColor |
	
	newPicker := self getNew: NewColorPickerMorph createdIn: [self textField showBackgroundColorDialog].
	self assert: newPicker size equals: 1.
	
	newColor := Color random.
	(newPicker at: 1) selectedColor: newColor.
	self assert: self textField color equals: newColor.
	
	newPicker do: [:each | each delete]