accessing
slide: aPSSlide
	
	slide := aPSSlide.
	aPSSlide ifNotNil: [ self updateImage ]
