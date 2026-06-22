parsing tests
testSingleIndexReturnsThatIndex

	self
		assert: (self parser indicesFrom: '7')
		equals: #(7)
