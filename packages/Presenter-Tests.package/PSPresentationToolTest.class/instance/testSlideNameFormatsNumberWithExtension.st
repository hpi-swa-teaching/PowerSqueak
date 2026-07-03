export tests
testSlideNameFormatsNumberWithExtension

	self
		assert: (self tool exportController slideName: 42)
		equals: 'slide42.png'