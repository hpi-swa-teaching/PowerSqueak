as yet unclassified
addTextMorph

	| textMorph |
	textMorph := PSTextMorph new.
	textMorph adjustToSlideBackground: self slide.
	self slide addContent: textMorph.
	^ textMorph
