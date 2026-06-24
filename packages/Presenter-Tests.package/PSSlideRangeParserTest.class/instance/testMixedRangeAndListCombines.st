parsing tests
testMixedRangeAndListCombines

	self
		assert: (self parser indicesFrom: '1-3,8,9')
		equals: #(1 2 3 8 9)
