drawing
drawResultTextOn: aCanvas withPanelTop: aNumber

	| resultFont |
	resultFont := PSTextMorph defaultTextStyle fontOfSize: (self selectionFontSize * self textScale) rounded.
	aCanvas
		drawString: self resultText
		at: (self left @ aNumber) + self class resultTextOffset
		font: resultFont
		color: self resultTextColor