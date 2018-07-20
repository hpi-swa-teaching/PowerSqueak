slide management
createSlide

	| newSlide |
	newSlide := self presentation createSlideAfter: self currentSlideNumber.
	self
		selectSlideNumber: self currentSlideNumber + 1;
		updateSlideMiniatures;
		updateCurrentMiniature.
	^ newSlide