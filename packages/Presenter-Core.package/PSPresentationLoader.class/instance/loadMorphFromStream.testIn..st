morph loading
loadMorphFromStream: aStream testIn: aWorld

	| morph |
	[morph := aStream fileInObjectAndCode]
		on: Error
		do: [:error |
			morph := self abandonMorph: morph].
	(morph isNil not and: [self morph: morph survivesOneCycleIn: aWorld])
		ifFalse: [morph := self abandonMorph: morph].
	^ morph