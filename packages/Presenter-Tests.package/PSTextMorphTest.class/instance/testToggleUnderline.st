style tests
testToggleUnderline

	| textLength |
	textLength := self textField textMorph contents size.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField selectionEmphasisCode: 0.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleUnderline.
	self textField textMorph selectFrom: 1 to: textLength.
	self
		assert: self textField selectionEmphasisCode
		equals: TextEmphasis underlined emphasisCode.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleUnderline.
	self textField textMorph selectFrom: 1 to: textLength.
	self assert: self textField selectionEmphasisCode equals: 0