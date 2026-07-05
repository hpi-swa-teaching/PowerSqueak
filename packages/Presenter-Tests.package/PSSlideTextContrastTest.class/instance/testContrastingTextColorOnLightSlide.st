text contrast tests
testContrastingTextColorOnLightSlide

	self slide color: Color white.
	self
		assert: self slide contrastingTextColor
		equals: Color black