parsing tests
testSeparatorOnlyYieldsNoIndices

	self
		assert: (self parser indicesFrom: ',')
		equals: #()
