as yet unclassified
testContrastingTextColorOnLightSlide

	self slide color: Color white.
	self
		assert: self slide contrastingTextColor
		equals: Color black