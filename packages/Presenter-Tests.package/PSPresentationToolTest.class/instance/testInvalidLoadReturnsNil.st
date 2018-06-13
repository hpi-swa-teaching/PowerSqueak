loading tests
testInvalidLoadReturnsNil

	self assert: (self tool loadMorphFromStream: (self morphLoadingStreamFor: '')) equals: nil