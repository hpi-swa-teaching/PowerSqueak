styling
selectionFontSize: aNumber

	self selectionAddAttribute: (self fontSizeAttribute: aNumber).
	self textMorph releaseParagraph