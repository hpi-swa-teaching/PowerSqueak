loading tests
testMorphLoadIsValid

	self flag: #TODO.
	"| morph |
	morph := self tool loadMorphFromStream: (ReadWriteStream with: self validMorphFileData) binary reset.
	self assert: morph isNil not"