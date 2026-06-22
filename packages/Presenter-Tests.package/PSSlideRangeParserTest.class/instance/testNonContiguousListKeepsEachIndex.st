parsing tests
testNonContiguousListKeepsEachIndex

	self
		assert: (self parser indicesFrom: '1,8,9')
		equals: #(1 8 9)
