morph loading
loadMorphInDirectory: aFileDirectory fromFile: aFileName

	| morph |
	morph := self loadMorphFromStream: (aFileDirectory readOnlyFileNamed: aFileName).
	morph ifNil: [ | previousErrors |
		previousErrors := self slideErrors at: aFileDirectory localName.
		self slideErrors at: aFileDirectory localName put: previousErrors + 1].
	^ morph