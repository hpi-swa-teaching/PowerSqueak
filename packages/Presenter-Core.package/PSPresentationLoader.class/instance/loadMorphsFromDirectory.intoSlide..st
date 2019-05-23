slide loading
loadMorphsFromDirectory: aDirectory intoSlide: aSlide
	
	| sortedMorphFiles |
	sortedMorphFiles := self sortedMorphFiles: (aDirectory fileNames select: [:fileNames | fileNames endsWith: '.morph' ]).
	sortedMorphFiles do: [:each |
		(self loadMorphInDirectory: aDirectory fromFile: each)
			ifNotNil: [:morph | aSlide addMorphBack: morph]].