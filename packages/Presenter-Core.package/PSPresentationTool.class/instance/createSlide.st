slide management
createSlide

	| newSlide |
	newSlide := PSSlide new.
	self slides add: newSlide afterIndex: self currentSlideNumber.
	self selectSlide: self currentSlideNumber + 1.
	^ newSlide
	