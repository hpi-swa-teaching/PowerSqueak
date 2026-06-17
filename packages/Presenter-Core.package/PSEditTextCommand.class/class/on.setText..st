instance creation
on: aPSTextMorph setText: aText

	^ self new
		textMorph: aPSTextMorph;
		newText: aText;
		yourself