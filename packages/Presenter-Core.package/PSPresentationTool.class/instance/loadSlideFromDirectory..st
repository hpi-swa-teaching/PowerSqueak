presentation loading
loadSlideFromDirectory: aDirectory

	| slide corruptedMorphs sortedMorphFiles |
	corruptedMorphs := 0.
	slide := PSSlide new.
	slide setModel: self.
	sortedMorphFiles := self sortedMorphFiles: aDirectory fileNames.
	sortedMorphFiles do: [:each |
		| morph |
		morph := self loadMorphFromFile: aDirectory / each.
		morph
			ifNil: [corruptedMorphs := corruptedMorphs + 1]
			ifNotNil: [slide addMorphBack: morph]].
	self slides addLast: slide.
	^ corruptedMorphs