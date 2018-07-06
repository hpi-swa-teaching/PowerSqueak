slide management
createSlide

	| newSlide |
	newSlide := PSSlide new.
	newSlide setModel: self.
	self slides add: newSlide afterIndex: self currentSlideNumber.
	self selectSlideNumber: self currentSlideNumber + 1.
	self updateSlideMiniatures.
	self updateCurrentMiniature.
	^ newSlide
	