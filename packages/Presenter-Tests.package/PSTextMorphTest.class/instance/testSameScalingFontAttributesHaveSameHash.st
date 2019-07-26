scaling font tests
testSameScalingFontAttributesHaveSameHash

	| attr1 attr2 slide|
	slide := self slide.
	attr1 := PSScalingFontAttribute new 
		style: PSTextMorph defaultTextStyle;
		scalingSource: slide.
	attr2 := PSScalingFontAttribute new 
		style: PSTextMorph defaultTextStyle;
		scalingSource: slide.
	self assert: attr1 hash equals: attr2 hash 