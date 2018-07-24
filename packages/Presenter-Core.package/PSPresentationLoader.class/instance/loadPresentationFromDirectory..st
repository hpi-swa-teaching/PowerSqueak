presentation loading
loadPresentationFromDirectory: aDirectory

	self reset.
	^ (self isValidPresentationDirectory: aDirectory)
		ifTrue: [self loadPresentationUnchecked: aDirectory]
		ifFalse: [nil]