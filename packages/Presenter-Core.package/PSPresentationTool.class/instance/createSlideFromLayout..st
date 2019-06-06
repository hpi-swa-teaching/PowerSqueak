layouts
createSlideFromLayout: aLayout

	| slide |
	slide := aLayout duplicate.
	slide presentation: self presentation.
	slide updateSlideContainer: self slideContainer.	
	self addSlide: slide