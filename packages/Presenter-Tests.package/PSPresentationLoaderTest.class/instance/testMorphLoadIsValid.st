presentation loading tests
testMorphLoadIsValid

	| morph |
	morph := self loader 
		loadMorphFromStream: (self morphLoadingStreamFor: self validMorphFileData)
		testIn: self world.
	self 
		assert: morph notNil;
		assert: morph class equals: PSContentContainer