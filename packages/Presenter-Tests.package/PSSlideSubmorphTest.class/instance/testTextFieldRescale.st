textfield test
testTextFieldRescale

	| textField oldSize |
	textField := PSTextMorph new.
	textField center: self slide center.
	self slide addContent: textField.
	oldSize := textField actualTextSize.
	self slide extent: self slide extent * 2.
	self assert: oldSize * 2 = textField actualTextSize