saving
saveSubmorphsOf: aSlide in: aDirectory.

	aSlide allMorphsDo: [:each | each prepareToBeSaved].
	aSlide submorphs doWithIndex: [:each :index | 
		each saveOnFileNamed: (aDirectory / (index asString, '.morph')) fullName]