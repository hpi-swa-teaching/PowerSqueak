text contrast tests
testManualTextColorIsKept

	| textMorph |
	self slide color: Color black.
	textMorph := PSTextMorph new.
	textMorph selectionColor: Color red.
	textMorph adjustToSlideBackground: self slide.
	self slide addContent: textMorph.
	self
		assert: textMorph selectionColor
		equals: Color red
