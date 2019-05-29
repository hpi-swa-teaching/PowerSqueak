slide loading
loadMorphsFromDirectory: aDirectory intoSlide: aSlide
	
	| sortedMorphFiles |
	sortedMorphFiles := self sortedMorphFilesIn: aDirectory.
	sortedMorphFiles do: [:each |
		(self loadMorphInDirectory: aDirectory fromFile: each)
			ifNotNil: [:morph | aSlide addMorphBack: morph]].