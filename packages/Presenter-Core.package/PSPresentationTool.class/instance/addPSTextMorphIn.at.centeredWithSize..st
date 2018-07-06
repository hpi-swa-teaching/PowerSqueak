layouts
addPSTextMorphIn: aPSSlide at: aRectangle centeredWithSize: aNumber

	| textMorph |
	textMorph := self addPSTextMorphIn: aPSSlide at: aRectangle withSize: aNumber.
	^ textMorph centerText