layout tests
testSlideLayoutNamesReturnsKeys

	self
		assert: self tool slideLayoutNames asSet
		equals: self presentation slideLayouts keys asSet
