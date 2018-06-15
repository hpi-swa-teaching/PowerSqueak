loading tests
testCanLoadEmptyPresentation

	| directory errorReport |
	directory := self mockEmptyPresentationDirectory.
	errorReport := self tool loadPresentationUnchecked: directory.
	self
		assert: (errorReport values select: [:each | each = 0]) size 
		equals: (directory / self tool slidesDirectoryName) directoryNames size
		description: 'There should be 0 errors per slide for an empty presentation'