slide management
addSlide: aSlide afterIndex: anInteger

	self presentation addSlide: aSlide afterIndex: anInteger.
	self
		selectSlideNumber: self currentSlideNumber + 1;
		updateSlideMiniatures;
		updateCurrentMiniature.
	^ aSlide.