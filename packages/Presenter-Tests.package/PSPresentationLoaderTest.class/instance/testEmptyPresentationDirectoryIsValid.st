directory checking
testEmptyPresentationDirectoryIsValid

	| directory |
	directory := self mockEmptyPresentationDirectory.
	self assert: (self loader isValidPresentationDirectory: directory)