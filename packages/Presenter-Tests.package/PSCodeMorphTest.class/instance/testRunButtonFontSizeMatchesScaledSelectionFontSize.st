code morph tests
testRunButtonFontSizeMatchesScaledSelectionFontSize

	self assert: self codeMorph runButton fontSize
		equals: self codeMorph selectionFontSize * self codeMorph textScale