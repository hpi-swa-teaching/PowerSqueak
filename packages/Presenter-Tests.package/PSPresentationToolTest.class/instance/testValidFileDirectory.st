loading tests
testValidFileDirectory

	| directory |
	directory := MockFileDirectory from: 'Presentation' -> {
		self tool slidesDirectoryName -> {
			'slide1'.
			'anotherSlide'.
			'This name does not matter!'
		}
	}.
	self assert: (self tool isValidPresentationDirectory: directory)