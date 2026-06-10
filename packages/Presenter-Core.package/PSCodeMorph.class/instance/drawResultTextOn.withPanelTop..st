drawing
drawResultTextOn: aCanvas withPanelTop: aNumber
	| resultFont |

	resultFont := PSTextMorph defaultTextStyle fontOfSize: (self selectionFontSize * self textScale) rounded.
	aCanvas
		drawString: self resultText
		at: (self left + 8) @ (aNumber + 10) 		"arbitrary offsets (UI)"
		font: resultFont
		color: self resultTextColor.