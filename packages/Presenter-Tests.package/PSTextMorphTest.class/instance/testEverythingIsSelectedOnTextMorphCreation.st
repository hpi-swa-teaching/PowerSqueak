context menu tests
testEverythingIsSelectedOnTextMorphCreation
	
	| textMorph |
	textMorph := PSTextMorph new.
	self assert: textMorph selectionInterval equals: (1 to: textMorph text size)