display
showSlide: aPSSlide

	self currentSlide ifNotNil: [self removeMorph: self currentSlide].
	self 
		removeSelection;
		currentSlide: aPSSlide;
		addMorph: self currentSlide fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))