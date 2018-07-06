as yet unclassified
addPSTextMorphIn: aPSSlide at: aRectangle

	| textMorph |
	textMorph := PSTextMorph new.
	aPSSlide addContent: textMorph.
	textMorph owner layoutFrame
		leftFraction: aRectangle left;
		rightFraction: aRectangle right;
		topFraction: aRectangle top;
		bottomFraction: aRectangle bottom.
	^ textMorph