slide moving tests
testSlideMovePromptIncludesNumberHint

	self assert: (self tool slideMoveText includesSubstring: 'enter a number')
