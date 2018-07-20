presentation loading
loadPresentationFromDirectory: aDirectory

	self initialize.
	^ (self isValidPresentationDirectory: aDirectory)
		ifTrue: [self loadPresentationUnchecked: aDirectory]
		ifFalse: [nil]