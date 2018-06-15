loading tests
testValidSlidesDirectoryIsEmpty

	| directory |
	directory := MockFileDirectory from: 'Presentation' -> {self tool slidesDirectoryName}.
	self assert: (self tool isValidPresentationDirectory: directory) equals: false