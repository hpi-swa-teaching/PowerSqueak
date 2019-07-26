saving
saveInstanceVarsOf: aSlide in: aDirectory

	| instanceVars |
	instanceVars := Dictionary new.
	aSlide class instanceVarsToBeSaved do: [:each | instanceVars at: each put:  (aSlide perform: each)].
	instanceVars saveOnFileNamed: (aDirectory / self class metadataFileName) fullName.
	
	