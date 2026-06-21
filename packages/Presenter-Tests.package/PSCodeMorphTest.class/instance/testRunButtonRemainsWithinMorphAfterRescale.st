as yet unclassified
testRunButtonRemainsWithinMorphAfterRescale

	self codeMorph rescale: 200 @ 200.
	self codeMorph fullBounds.
	self assert: (self codeMorph bounds containsRect: self codeMorph runButton bounds).