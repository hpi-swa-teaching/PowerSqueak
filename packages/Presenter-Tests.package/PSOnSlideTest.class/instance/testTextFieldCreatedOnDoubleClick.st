event tests
testTextFieldCreatedOnDoubleClick

	| oldSubmorphs addedMorphs |
	oldSubmorphs := self slide submorphs.
	self doubleClick: MouseEvent redButton at: self slide center.
	addedMorphs := self slide submorphs difference: oldSubmorphs.
	self assert: addedMorphs size = 1.
	self assert: (addedMorphs first content isKindOf: PSTextMorph)