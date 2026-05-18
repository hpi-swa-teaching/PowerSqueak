style tests
testToggleCombinedEmphasisIndependently

	| textLength bold italic underline selectAll assertEmphasis |
	textLength := self textField textMorph contents size.
	bold := TextEmphasis bold emphasisCode.
	italic := TextEmphasis italic emphasisCode.
	underline := TextEmphasis underlined emphasisCode.
	selectAll := [self textField textMorph selectFrom: 1 to: textLength].
	assertEmphasis := [:expected |
		selectAll value.
		self assert: self textField selectionEmphasisCode equals: expected].
	selectAll value.
	self textField selectionEmphasisCode: 0.
	selectAll value.
	self textField toggleItalic.
	selectAll value.
	self textField toggleBold.
	assertEmphasis value: bold + italic.
	selectAll value.
	self textField toggleItalic.
	assertEmphasis value: bold.
	selectAll value.
	self textField toggleUnderline.
	assertEmphasis value: bold + underline.
	selectAll value.
	self textField toggleItalic.
	assertEmphasis value: bold + italic + underline.
	selectAll value.
	self textField toggleBold.
	assertEmphasis value: italic + underline.
	selectAll value.
	self textField toggleItalic.
	assertEmphasis value: underline.
	selectAll value.
	self textField toggleUnderline.
	assertEmphasis value: 0