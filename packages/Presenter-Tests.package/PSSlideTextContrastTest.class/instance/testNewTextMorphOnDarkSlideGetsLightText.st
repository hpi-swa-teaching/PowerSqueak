as yet unclassified
testNewTextMorphOnDarkSlideGetsLightText

	self slide color: Color black.
	self
		assert: self addTextMorph selectionColor
		equals: Color white