presentation loading
testCanLoadCompletelyEmptyPresentation

	| directory errorReport |
	directory := self mockCompletelyEmptyPresentationDirectory.
	self loader loadPresentationFromDirectory: directory.
	errorReport := self loader errorReport.
	self
		assert: (errorReport values select: [:each | each ~= 0]) isEmpty
		description: 'There should be 0 errors per slide for an empty presentation'