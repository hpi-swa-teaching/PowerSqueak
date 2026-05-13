styling
alignText: aSymbol

	self wrapFlag: true.
	self textMorph width: (self width max: self textMorph width).
	self addAttribute: (TextAlignment perform: aSymbol).
	self textMorph paragraph composeAll.
	self textMorph updateFromParagraph.
	self textMorph releaseParagraph; paragraph.
	^ self