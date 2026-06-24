export tests
testSlideNameFormatsNumberWithExtension

	self
		assert: (self tool slideName: 42)
		equals: 'slide42.png'
