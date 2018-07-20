as yet unclassified
testCanLoadEmptyPresentation

	| directory errorReport |
	directory := self mockEmptyPresentationDirectory.
	self loader loadPresentationUnchecked: directory.
	errorReport := self loader errorReport.
	self
		assert: (errorReport values select: [:each | each = 0]) size 
		equals: (directory / self loader slidesDirectoryName) directoryNames size
		description: 'There should be 0 errors per slide for an empty presentation'