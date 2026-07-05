code morph tests
testShowResultUpdatesTextOnSecondCall

	self codeMorph showResult: 'first'.
	self codeMorph showResult: 'second'.
	self assert: self codeMorph resultText equals: 'second'