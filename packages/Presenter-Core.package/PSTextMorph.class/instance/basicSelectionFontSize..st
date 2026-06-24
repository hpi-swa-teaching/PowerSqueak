styling
basicSelectionFontSize: aNumber

	self selectionAddAttribute: (self fontSizeAttribute: aNumber).
	self textMorph releaseParagraph