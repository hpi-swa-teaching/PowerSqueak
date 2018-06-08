loading tests
testInvalidLoadReturnsNil

	self assert: (self tool loadMorphFromStream: (MultiByteBinaryOrTextStream on: '')) equals: nil