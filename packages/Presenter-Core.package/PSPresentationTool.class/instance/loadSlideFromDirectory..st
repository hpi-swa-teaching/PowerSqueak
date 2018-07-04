presentation loading
loadSlideFromDirectory: aDirectory

	| slide sortedMorphFiles |
	slide := self createSlide.
	sortedMorphFiles := self sortedMorphFiles: aDirectory fileNames.
	sortedMorphFiles do: [:each |
		 (self loadMorphFromFile: aDirectory / each)
			ifNotNil: [:morph | slide addMorphBack: morph]].
	^ slide