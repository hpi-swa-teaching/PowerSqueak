default layouts
addPSTextMorphIn: aPSSlide at: aRectangle

	| textMorph |
	textMorph := PSTextMorph new.
	textMorph adjustToSlideBackground: aPSSlide.
	aPSSlide addContent: textMorph.
	textMorph owner layoutFrame: (LayoutFrame fractions: aRectangle).
	^ textMorph
