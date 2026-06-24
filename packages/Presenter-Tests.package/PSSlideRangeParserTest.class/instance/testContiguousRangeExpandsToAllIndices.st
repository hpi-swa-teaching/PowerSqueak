parsing tests
testContiguousRangeExpandsToAllIndices

	self
		assert: (self parser indicesFrom: '2-5')
		equals: #(2 3 4 5)
