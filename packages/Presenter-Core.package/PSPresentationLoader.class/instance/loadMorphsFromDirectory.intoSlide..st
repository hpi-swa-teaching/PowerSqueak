slide loading
loadMorphsFromDirectory: aDirectory intoSlide: aSlide
	
	| sortedMorphFiles errors |
	sortedMorphFiles := self sortedMorphFilesIn: aDirectory.
	sortedMorphFiles do: [:each |
		(self loadMorphInDirectory: aDirectory fromFile: each)
			ifNotNil: [:morph | aSlide addMorphBack: morph]].
	errors := (self morphFilesIn: aDirectory) size - aSlide submorphs size.
	self slideErrors at: aDirectory localName put: errors.