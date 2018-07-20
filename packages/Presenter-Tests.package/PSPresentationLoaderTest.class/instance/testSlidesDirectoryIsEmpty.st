as yet unclassified
testSlidesDirectoryIsEmpty

	| directory |
	directory := PSMockFileDirectory from: 'Presentation' -> {self loader slidesDirectoryName}.
	self assert: (self loader isValidPresentationDirectory: directory) equals: false