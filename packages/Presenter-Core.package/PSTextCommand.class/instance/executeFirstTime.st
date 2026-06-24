execution
executeFirstTime

	beforeState := PSTextState of: self textMorph.
	self executeOnTextMorph.
	afterState := PSTextState of: self textMorph.
	executed := true