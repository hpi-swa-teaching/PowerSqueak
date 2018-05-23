textfield test
testTextFieldCreatedOnClick

	|oldSubmorphs addedMorphs container|
	oldSubmorphs := self slide submorphs.
	self slide handleEvent: (self redMouseDownAt: self slide center).
	addedMorphs := self slide submorphs difference: oldSubmorphs.
	self assert: addedMorphs size = 1.
	container := addedMorphs first.
	self assert: (container child isKindOf: PSTextMorph)