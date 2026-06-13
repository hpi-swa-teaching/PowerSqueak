drawing
drawRunSymbolOn: aCanvas
	| font xPos yPos |

	font := PSTextMorph defaultTextStyle fontOfSize: fontSize.
	xPos := self left + ((self width - (font widthOfString: '>')) // 2).
	yPos := self top  + ((self height - font height) // 2).
	aCanvas
		drawString: '>'
		at: xPos @ yPos
		font: font
		color: (Color r: 0.67 g: 1.0 b: 0.67).