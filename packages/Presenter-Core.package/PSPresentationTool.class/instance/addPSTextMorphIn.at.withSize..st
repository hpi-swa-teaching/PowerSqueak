layouts
addPSTextMorphIn: aPSSlide at: aRectangle withSize: aNumber

	| textMorph |
	textMorph := self addPSTextMorphIn: aPSSlide at: aRectangle.
	^ textMorph selectionFontSize: aNumber