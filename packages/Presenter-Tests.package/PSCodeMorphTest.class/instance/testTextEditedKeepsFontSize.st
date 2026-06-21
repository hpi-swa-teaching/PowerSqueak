syntax highlighting tests
testTextEditedKeepsFontSize

	| sizeBefore |
	self codeMorph textMorph contents: 'self size'.
	sizeBefore := self codeMorph selectionFontSize.
	self codeMorph textEdited: self codeMorph textMorph text.
	self
		assert: self codeMorph selectionFontSize
		equals: sizeBefore
