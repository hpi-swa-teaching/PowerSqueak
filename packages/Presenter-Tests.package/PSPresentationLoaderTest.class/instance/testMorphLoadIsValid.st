presentation loading
testMorphLoadIsValid

	| morph |
	morph := self loader 
		loadMorphFromStream: (self morphLoadingStreamFor:  self validMorphFileData)
		testIn: self world.
	self assert: morph isNil not.
	self assert: morph class = PSContentContainer.
	morph ifNotNil: [morph abandon.]