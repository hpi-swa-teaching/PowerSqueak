file tests
testSlidesDirectoryNameReturnsConstant

	self
		assert: self tool slidesDirectoryName
		equals: 'slides'
