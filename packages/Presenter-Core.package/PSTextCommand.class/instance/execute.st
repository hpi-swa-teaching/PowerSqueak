execution
execute

	beforeState
		ifNil: [
			beforeState := PSTextState of: self textMorph.
			self executeOnTextMorph.
			afterState := PSTextState of: self textMorph]
		ifNotNil: [afterState restoreOn: self textMorph]