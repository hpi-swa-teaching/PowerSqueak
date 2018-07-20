as yet unclassified
testEmptyPresentationDirectoryIsValid

	| directory |
	directory := self mockEmptyPresentationDirectory.
	self assert: (self loader isValidPresentationDirectory: directory)