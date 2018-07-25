event tests
testTextFieldCreatedOnDoubleClick

	| oldSubmorphs addedMorphs |
	oldSubmorphs := self submorphs.
	self doubleClick: MouseEvent redButton at: self slide center.
	addedMorphs := self submorphs difference: oldSubmorphs.
	
	self 
		assert: addedMorphs size equals: 1;
		assert: (addedMorphs first content isKindOf: PSTextMorph)