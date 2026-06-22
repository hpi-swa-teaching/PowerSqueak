parsing tests
testDuplicatesAreRemovedPreservingOrder

	self
		assert: (self parser indicesFrom: '1-3,2,2')
		equals: #(1 2 3)
