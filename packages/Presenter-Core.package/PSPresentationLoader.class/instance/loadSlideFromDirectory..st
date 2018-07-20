slide loading
loadSlideFromDirectory: aDirectory

	| slide sortedMorphFiles |
	slide := self presentation createSlideBack.
	sortedMorphFiles := self sortedMorphFiles: aDirectory fileNames.
	sortedMorphFiles do: [:each |
		 (self loadMorphFromFile: aDirectory / each)
			ifNotNil: [:morph | slide addMorphBack: morph]].
	^ slide