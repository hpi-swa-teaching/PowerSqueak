as yet unclassified
testShowResultSetsResultText

	self codeMorph showResult: 'hello'.
	self assert: self codeMorph resultText equals: 'hello'