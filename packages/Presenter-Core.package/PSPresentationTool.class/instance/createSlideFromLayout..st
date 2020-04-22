layouts
createSlideFromLayout: aLayout

	| slide |
	slide := aLayout duplicate.
	slide presentation: self presentation.
	self addSlide: slide