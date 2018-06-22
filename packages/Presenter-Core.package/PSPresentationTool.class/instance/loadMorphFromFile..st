presentation loading
loadMorphFromFile: aFileDirectory
	"This was copied from Morph(class)>>#fromFileName:"
	^ self loadMorphFromStream: (MultiByteBinaryOrTextStream with: ((FileStream readOnlyFileNamed: aFileDirectory fullName) binary contentsOfEntireFile)) binary reset