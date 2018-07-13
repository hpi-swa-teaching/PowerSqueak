slide management
createSlideAfter: anIndex

	| newSlide |
	newSlide := PSSlide new.
	self addSlide: newSlide afterIndex: anIndex.
	^ newSlide