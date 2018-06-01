rescaling tests
testTextFieldRescale

	| oldSize |
	oldSize := self textField actualTextSize.
	self slide extent: self slide extent * 2.
	self assert: oldSize * 2 = self textField actualTextSize