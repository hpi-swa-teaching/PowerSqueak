as yet unclassified
testContrastingTextColorOnDarkSlide

	self slide color: Color black.
	self
		assert: self slide contrastingTextColor
		equals: Color white