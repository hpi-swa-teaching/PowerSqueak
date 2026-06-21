scaling font tests
testScalingFontAttributeResolvesFontInStyle

	| attribute resolvedFont |
	attribute := PSScalingFontAttribute
		styled: PSTextMorph defaultTextStyle
		sized: 11
		scaledBy: PSTextMorph new.
	attribute
		forFontInStyle: attribute style
		do: [:aFont | resolvedFont := aFont].
	self
		assert: resolvedFont
		equals: (attribute style fontOfSize: attribute actualTextSize)
