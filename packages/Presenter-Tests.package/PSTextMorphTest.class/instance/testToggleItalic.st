style tests
testToggleItalic

	| textLength |
	textLength := self textField textMorph contents size.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField selectionEmphasisCode: 0.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleItalic.
	self textField textMorph selectFrom: 1 to: textLength.
	self assert: self textField selectionEmphasisCode equals: TextEmphasis italic emphasisCode.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleItalic.
	self textField textMorph selectFrom: 1 to: textLength.
	self assert: self textField selectionEmphasisCode equals: 0