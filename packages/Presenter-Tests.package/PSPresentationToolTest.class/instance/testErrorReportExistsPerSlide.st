loading tests
testErrorReportExistsPerSlide

	| directory errorReport |
	directory := self mockEmptyPresentationDirectory.
	errorReport := self tool loadPresentationUnchecked: directory.
	self 
		assert: errorReport keys asSet
		equals: (directory / self tool slidesDirectoryName) directoryNames asSet
		description: 'The error report should contain an entry for every loaded slide, even if its empty!'