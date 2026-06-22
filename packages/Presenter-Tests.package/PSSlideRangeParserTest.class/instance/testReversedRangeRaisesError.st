parsing tests
testReversedRangeRaisesError

	self should: [self parser indicesFrom: '5-2'] raise: Error
