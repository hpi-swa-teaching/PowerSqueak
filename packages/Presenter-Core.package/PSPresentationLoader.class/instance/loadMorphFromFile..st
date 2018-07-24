morph loading
loadMorphFromFile: aFileDirectory
	"This was copied from Morph(class)>>#fromFileName:"
	^ self loadMorphFromStream: (FileStream readOnlyFileNamed: aFileDirectory fullName)