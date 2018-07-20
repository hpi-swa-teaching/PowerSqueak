submorph tests
testSubmorphSideRatioOnResize

	| oldRatio |
	self slide addContent: self morph.
	oldRatio := self morph extent y / self morph extent x.
	self assert: [self does: self morph answerSideRatio: oldRatio]