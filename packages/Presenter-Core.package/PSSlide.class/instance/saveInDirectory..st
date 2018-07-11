presentation saving
saveInDirectory: aDirectory

	self allMorphsDo: [:each | each prepareToBeSaved ].
	self submorphs doWithIndex: [:each :index | 
		each saveOnFileNamed: (aDirectory / (index asString, '.morph')) fullName].