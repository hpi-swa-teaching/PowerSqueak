morph loading
loadMorphInDirectory: aFileDirectory fromFile: aFileName

	| morph |
	morph := self loadMorphFromStream: (aFileDirectory readOnlyFileNamed: aFileName).
	morph ifNil: [self slideErrors at: aFileDirectory localName incrementBy: 1].
	^ morph