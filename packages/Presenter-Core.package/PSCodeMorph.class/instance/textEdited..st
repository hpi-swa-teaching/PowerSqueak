editor access
textEdited: aText
	| styled textSize |
	
	textSize := self selectionFontSize.
	styled := SHTextStylerST80 new styledTextFor: aText.
	super textEdited: styled.
	self changeFontSize: textSize.
	