menu tests
testWarnTrueChoiceRunsTrueBlock
	| ran |
	ran := false.
	[self tool warn: 'Proceed?' trueChoise: [ran := true]] valueSupplyingAnswer: true.
	self assert: ran
