default layouts
addPSTextMorphIn: aPSSlide at: aRectangle

	| textMorph |
	textMorph := PSTextMorph new.
	aPSSlide addContent: textMorph.
	textMorph owner layoutFrame
		leftFraction: aRectangle left;
		rightFraction: aRectangle right;
		topFraction: aRectangle top;
		bottomFraction: aRectangle bottom.
	textMorph setText: 'lorem Ipsum'.
	"Select the whole text to allow the text size to be changed later by calling selectionFontSize:"
	textMorph selectAll.
 	^ textMorph