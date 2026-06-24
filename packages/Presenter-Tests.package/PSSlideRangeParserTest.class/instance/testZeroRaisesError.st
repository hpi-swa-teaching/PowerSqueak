parsing tests
testZeroRaisesError

	self should: [self parser indicesFrom: '0'] raise: Error
