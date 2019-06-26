presentation saving
saveInstanceVarsIn: aDirectory

	| instanceVars |
	instanceVars := Dictionary new.
	self instanceVarsToBeSaved do: [:each | instanceVars at: each put:  (self perform: each)].
	instanceVars saveOnFileNamed: (aDirectory / 'metadata.dict') fullName.
	
	