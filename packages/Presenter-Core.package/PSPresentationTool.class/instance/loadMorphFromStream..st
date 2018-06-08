as yet unclassified
loadMorphFromStream: aReadWriteStream

	| morph |
	[morph := aReadWriteStream fileInObjectAndCode]
		on: Error
		do: [:each |
			morph := self abandonMorph: morph].
	(morph isNil not and: [self morphSurvivesOneCycle: morph])
		ifFalse: [morph := self abandonMorph: morph].
	^ morph
	