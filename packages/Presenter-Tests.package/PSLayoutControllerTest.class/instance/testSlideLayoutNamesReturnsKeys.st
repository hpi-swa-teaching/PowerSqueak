layout tests
testSlideLayoutNamesReturnsKeys

	self
		assert: self tool layoutController slideLayoutNames asSet
		equals: self presentation slideLayouts keys asSet