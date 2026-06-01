morph loading
loadMorphFromStream: aStream testIn: aWorld

	| morph |
	[[morph := aStream fileInObjectAndCode]
		on: MessageNotUnderstood
		do: [:error |
			(error receiver isNil
				and: [error message selector = #localBoundsToGlobal:])
				ifTrue: [error resume: error message arguments first]
				ifFalse: [error pass]]]
		on: Error
		do: [:error |
			morph := self abandonMorph: morph].
	(morph notNil and: [self morph: morph survivesOneCycleIn: aWorld])
		ifFalse: [morph := self abandonMorph: morph].
	^ morph