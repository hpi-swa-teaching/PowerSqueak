parsing tests
testEmptyStringYieldsNoIndices

	self
		assert: (self parser indicesFrom: '')
		equals: #()
