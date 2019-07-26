directory checking tests
testEmptyPresentationDirectoryIsValid

	| directory |
	directory := self mockEmptyPresentationDirectory.
	self assert: (self loader isValidPresentationDirectory: directory)