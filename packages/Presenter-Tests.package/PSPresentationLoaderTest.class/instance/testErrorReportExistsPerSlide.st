presentation loading
testErrorReportExistsPerSlide

	| directory errorReport |
	directory := self mockEmptyPresentationDirectory.
	self loader loadPresentationUnchecked: directory.
	errorReport := self loader errorReport.
	self 
		assert: errorReport keys asSet
		equals: (directory / self loader slidesDirectoryName) directoryNames asSet
		description: 'The error report should contain an entry for every loaded slide, even if its empty!'