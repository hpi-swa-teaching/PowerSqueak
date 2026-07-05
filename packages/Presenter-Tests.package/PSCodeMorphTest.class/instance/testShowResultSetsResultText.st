code morph tests
testShowResultSetsResultText

	self codeMorph showResult: 'hello'.
	self assert: self codeMorph resultText equals: 'hello'