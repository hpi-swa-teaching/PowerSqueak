text contrast tests
testNewTextMorphOnDarkSlideGetsLightText

	self slide color: Color black.
	self
		assert: self addTextMorph selectionColor
		equals: Color white