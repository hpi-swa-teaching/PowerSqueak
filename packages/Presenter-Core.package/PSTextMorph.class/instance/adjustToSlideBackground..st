styling
adjustToSlideBackground: aPSSlide

	self hasManualTextColor
		ifFalse: [self selectionColor: aPSSlide contrastingTextColor]
