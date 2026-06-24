scaling font tests
testScalingFontAttributeNotFromPrettyPrinting

	| attribute |
	attribute := PSScalingFontAttribute new
		style: PSTextMorph defaultTextStyle;
		scalingSource: self slide.
	self deny: attribute couldDeriveFromPrettyPrinting
