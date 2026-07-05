code morph tests
testRescaleUpdatesRunButtonFontSize

	self codeMorph rescale: 200 @ 200.
	self assert: self codeMorph runButton fontSize
		equals: self codeMorph selectionFontSize * self codeMorph textScale