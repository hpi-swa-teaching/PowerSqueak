as yet unclassified
testNewTextMorphOnLightSlideGetsDarkText

	self slide color: Color white.
	self
		assert: self addTextMorph selectionColor
		equals: Color black