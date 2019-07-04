morph loading
loadMorphInDirectory: aFileDirectory fromFile: aFileName
	"This was copied from Morph(class)>>#fromFileName:"
	| valueBefore morph slideName |
	slideName:= aFileDirectory localName.
	valueBefore := self slideErrors at: slideName.
	morph := self loadMorphFromStream: (aFileDirectory readOnlyFileNamed: aFileName).
	morph ifNil: [self slideErrors at: slideName put: valueBefore +1].
	^ morph