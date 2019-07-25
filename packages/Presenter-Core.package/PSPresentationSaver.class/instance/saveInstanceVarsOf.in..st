saving
saveInstanceVarsOf: aSlide in: aDirectory

	| instanceVars |
	instanceVars := Dictionary new.
	aSlide instanceVarsToBeSaved do: [:each | instanceVars at: each put:  (aSlide perform: each)].
	instanceVars saveOnFileNamed: (aDirectory / 'metadata.dict') fullName.
	
	