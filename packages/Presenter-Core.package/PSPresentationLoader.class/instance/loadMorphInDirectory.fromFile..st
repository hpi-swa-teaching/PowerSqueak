morph loading
loadMorphInDirectory: aFileDirectory fromFile: aFileName

	| morph stream |
	stream := aFileDirectory readOnlyFileNamed: aFileName.
	[morph := self loadMorphFromStream: stream]
		ensure: [stream close].
	morph ifNil: [ | previousErrors |
		previousErrors := self slideErrors at: aFileDirectory localName.
		self slideErrors at: aFileDirectory localName put: previousErrors + 1].
	^ morph