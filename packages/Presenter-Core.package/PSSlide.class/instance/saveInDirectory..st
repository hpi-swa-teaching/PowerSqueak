presentation saving
saveInDirectory: aDirectory

	| instanceVar |
	self allMorphsDo: [:each | each prepareToBeSaved].
	self submorphs doWithIndex: [:each :index | 
		each saveOnFileNamed: (aDirectory / (index asString, '.morph')) fullName].
	instanceVar := Dictionary new.
	self instanceVarsToBeSaved do: [:each | instanceVar at: each put:  (self perform: each)].
	FileStream forceNewFileNamed: (aDirectory  / 'metadata.dict') fullName do: [:out | instanceVar storeOn: out] 
	
	