morph loading
loadMorphInDirectory: aFileDirectory fromFile: aFileName
	"This was copied from Morph(class)>>#fromFileName:"
	^ self loadMorphFromStream: (aFileDirectory readOnlyFileNamed: aFileName)