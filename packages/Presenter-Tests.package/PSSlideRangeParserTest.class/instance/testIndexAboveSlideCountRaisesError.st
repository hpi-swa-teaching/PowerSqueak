parsing tests
testIndexAboveSlideCountRaisesError

	self should: [self parser indicesFrom: '2-15'] raise: Error
