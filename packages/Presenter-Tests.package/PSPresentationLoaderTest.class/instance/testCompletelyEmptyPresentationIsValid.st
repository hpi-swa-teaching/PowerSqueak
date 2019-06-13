presentation loading
testCompletelyEmptyPresentationIsValid

	| directory |
	directory := self mockCompletelyEmptyPresentationDirectory.
	self assert: (self loader isValidPresentationDirectory: directory)