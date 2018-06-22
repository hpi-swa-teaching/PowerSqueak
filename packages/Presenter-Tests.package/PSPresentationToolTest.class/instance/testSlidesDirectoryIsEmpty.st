loading tests
testSlidesDirectoryIsEmpty

	| directory |
	directory := PSMockFileDirectory from: 'Presentation' -> {self tool slidesDirectoryName}.
	self assert: (self tool isValidPresentationDirectory: directory) equals: false