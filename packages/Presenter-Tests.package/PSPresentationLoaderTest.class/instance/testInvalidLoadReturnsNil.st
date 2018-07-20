as yet unclassified
testInvalidLoadReturnsNil

	self assert: (self loader loadMorphFromStream: (self morphLoadingStreamFor: '')) equals: nil