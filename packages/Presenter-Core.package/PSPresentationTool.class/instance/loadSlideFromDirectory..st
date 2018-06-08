as yet unclassified
loadSlideFromDirectory: aDirectory

	| slide corruptedMorphs |
	corruptedMorphs := 0.
	slide := PSSlide new.
	aDirectory fileNames do: [:each |
		| morph |
		morph := self loadMorphFromFile: aDirectory / each.
		morph
			ifNil: [corruptedMorphs := corruptedMorphs + 1]
			ifNotNil: [slide addMorph: morph]].
	self slides addLast: slide.
	^ corruptedMorphs