submorph tests
testSubmorphRelativeSizeOnResize

	| oldRatio |
	oldRatio := self morph extent / self slide extent.
	self assert: [self do: self morph extent and: self slide extent answerRatio: oldRatio]