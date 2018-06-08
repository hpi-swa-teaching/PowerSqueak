rescaling tests
testTextFieldRescale

	| oldSize |
	self flag: #TODO.
	oldSize := self textField textScale * self textField selectionFontSize.
	self slide extent: self slide extent * 2.
	self assert: oldSize * 2 = (self textField textScale * self textField selectionFontSize)