drawing
drawRunSymbolOn: aCanvas

	| font xPos yPos |
	font := PSTextMorph defaultTextStyle fontOfSize: self fontSize.
	xPos := self left + ((self width - (font widthOfString: self class runSymbol)) // 2).
	yPos := self top + ((self height - font height) // 2).
	aCanvas
		drawString: self class runSymbol
		at: xPos @ yPos
		font: font
		color: self class runSymbolColor