as yet unclassified
testColorDialog

	| newPicker newColor |
	newPicker := self container recolor.
	
	newColor := Color random.
	newPicker selectedColor: newColor.
	self assert: self morph color equals: newColor.
	
	newPicker abandon