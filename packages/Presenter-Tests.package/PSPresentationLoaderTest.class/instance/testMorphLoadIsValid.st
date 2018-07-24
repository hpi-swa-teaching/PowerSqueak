presentation loading
testMorphLoadIsValid

	| morph |
	morph := self loader 
		loadMorphFromStream: (self morphLoadingStreamFor: self validMorphFileData)
		testIn: self world.
	self assert: morph notNil.
	self assert: morph class equals: PSContentContainer