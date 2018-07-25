slide loading
loadSlideFromDirectory: aDirectory

	| slide sortedMorphFiles |
	slide := self presentation createSlideBack.
	sortedMorphFiles := self sortedMorphFiles: aDirectory fileNames.
	sortedMorphFiles do: [:each |
		(self loadMorphInDirectory: aDirectory fromFile: each)
			ifNotNil: [:morph | slide addMorphBack: morph]].
	^ slide