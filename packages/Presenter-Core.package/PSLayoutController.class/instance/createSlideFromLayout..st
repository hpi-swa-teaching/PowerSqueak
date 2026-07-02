layouts
createSlideFromLayout: aLayout

	| slide |
	slide := aLayout duplicate.
	slide presentation: self tool presentation.
	self tool addSlide: slide