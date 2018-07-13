slide management
createSlideAfter: anIndex

	| newSlide |
	newSlide := PSSlide new.
	newSlide setModel: self.
	self slides add: newSlide afterIndex: anIndex.
	^ newSlide