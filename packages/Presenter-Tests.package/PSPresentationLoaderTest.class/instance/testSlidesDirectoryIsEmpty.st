directory checking
testSlidesDirectoryIsEmpty

	| directory |
	directory := PSMockFileDirectory from: 'Presentation' -> {self loader slidesDirectoryName}.
	self deny: (self loader isValidPresentationDirectory: directory)