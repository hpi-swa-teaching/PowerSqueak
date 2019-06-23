accessing
addHiddenSlideSymbol

	self symbolForHiding: ((SketchMorph withForm: self class hiddenSlideImage) 
			extent: self extent/2; 
			center: self center; 
			yourself).
	self addMorph: self symbolForHiding.