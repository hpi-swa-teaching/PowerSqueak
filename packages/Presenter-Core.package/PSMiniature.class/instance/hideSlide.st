accessing
hideSlide

	self symbolForHiding 
		ifNil: [self addHiddenSlideSymbol].
	self slide hideSlide