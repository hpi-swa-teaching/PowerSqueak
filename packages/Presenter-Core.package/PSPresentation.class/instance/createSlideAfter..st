slide management
createSlideAfter: anIndex

	| newSlide |
	newSlide := PSSlide newWith: self.
	self addSlide: newSlide afterIndex: anIndex.
	^ newSlide