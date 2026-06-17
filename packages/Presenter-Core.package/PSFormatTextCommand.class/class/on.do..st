instance creation
on: aPSTextMorph do: aBlock

	^ self new
		textMorph: aPSTextMorph;
		formatBlock: aBlock;
		yourself