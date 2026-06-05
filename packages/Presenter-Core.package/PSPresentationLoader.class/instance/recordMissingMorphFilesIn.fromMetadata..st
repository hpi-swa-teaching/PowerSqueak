morph loading
recordMissingMorphFilesIn: aDirectory fromMetadata: aDictionary

	| expectedMorphCount missingCount |
	expectedMorphCount := aDictionary
		at: #expectedMorphCount
		ifAbsent: [^ self].
	missingCount := expectedMorphCount - (self morphFilesIn: aDirectory) size.
	self missingMorphErrors
		at: aDirectory localName
		put: (missingCount max: 0) 