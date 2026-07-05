code morph tests
testRunButtonIsPositionedWithinMorph

	self codeMorph fullBounds.
	self assert: (self codeMorph bounds containsRect: self codeMorph runButton bounds)