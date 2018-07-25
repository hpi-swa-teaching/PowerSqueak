submorph tests
testSubmorphRelativePositionOnResize

	| oldRatio |
	oldRatio := self morph position - self slide position / self morph extent.
	self assert: [self 
					do: self morph position - self slide position 
					and: self morph extent 
					answerRatio: oldRatio]