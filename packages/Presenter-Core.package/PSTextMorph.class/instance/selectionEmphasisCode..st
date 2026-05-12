styling
selectionEmphasisCode: aCode
	self selectionAddAttribute: (TextEmphasis new emphasisCode: aCode).
	self textMorph releaseParagraph