style tests
testCombinedEmphasis

	| textLength boldAndItalic |
	textLength := self textField textMorph contents size.
	boldAndItalic := TextEmphasis bold emphasis + TextEmphasis italic emphasisCode.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField selectionEmphasisCode: 0.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleBold.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleItalic.
	self textField textMorph selectFrom: 1 to: textLength.
	self assert: self textField selectionEmphasisCode equals: boldAndItalic.
	self textField textMorph selectFrom: 1 to: textLength.
	self textField toggleBold.
	self textField textMorph selectFrom: 1 to: textLength.
	self assert: self textField selectionEmphasisCode equals: TextEmphasis italic emphasisCode