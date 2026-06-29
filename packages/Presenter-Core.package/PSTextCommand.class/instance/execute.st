execution
execute

	self beforeState
		ifNil: [
			self beforeState: (PSTextState of: self textMorph).
			self executeOnTextMorph.
			self afterState: (PSTextState of: self textMorph)]
		ifNotNil: [self afterState restoreOn: self textMorph]