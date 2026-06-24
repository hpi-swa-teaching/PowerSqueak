slide moving tests
testSlideMoveTextReturnsPrompt

	self assert: (self tool slideMoveText includesSubstring: 'move the current slide')
