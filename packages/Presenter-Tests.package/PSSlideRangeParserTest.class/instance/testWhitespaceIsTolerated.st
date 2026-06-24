parsing tests
testWhitespaceIsTolerated

	self
		assert: (self parser indicesFrom: ' 1, 3 ')
		equals: #(1 3)
