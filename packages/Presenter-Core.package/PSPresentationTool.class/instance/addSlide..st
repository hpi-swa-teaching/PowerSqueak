slide management
addSlide: aSlide

	self presentation addSlide: aSlide afterIndex: self currentSlideNumber.
	self
		selectSlideNumber: self currentSlideNumber + 1;
		updateSlideMiniatures;
		updateCurrentMiniature.
	^ aSlide.