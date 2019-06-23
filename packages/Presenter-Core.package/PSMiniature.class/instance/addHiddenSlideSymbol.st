accessing
addHiddenSlideSymbol

	self
		hiddenSlideSymbol: (SketchMorph withForm: self class hiddenSlideImage);
		updateHiddenSlideSymbolBounds;
		addMorph: self hiddenSlideSymbol.
	self hiddenSlideSymbol hideFull