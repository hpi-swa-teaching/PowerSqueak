code morph tests
testShowResultDoesNotExpandSize
	| heightAtFirst |
	
	self codeMorph showResult: 'first'.
	heightAtFirst := self codeMorph height.
	self codeMorph showResult: 'second'.
	self assert: self codeMorph height equals: heightAtFirst