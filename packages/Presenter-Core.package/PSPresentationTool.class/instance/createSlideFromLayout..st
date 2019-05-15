layouts
createSlideFromLayout: aLayout

	| slide |
	slide := aLayout copy.
	slide updateSlideContainer: self slideContainer.	
	self addSlide: slide