parsing tests
testNonNumericTokenRaisesError

	self should: [self parser indicesFrom: '2-a'] raise: Error
