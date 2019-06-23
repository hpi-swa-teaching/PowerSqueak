presentation saving
saveInstanceVarsIn: aDirectory

	| instanceVars |
	instanceVars := Dictionary new.
	self instanceVarsToBeSaved do: [:each | instanceVars at: each put:  (self perform: each)].
	FileStream forceNewFileNamed: (aDirectory  / 'metadata.dict') fullName do: [:out | instanceVars storeOn: out] 
	
	