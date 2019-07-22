slide management
addSlide: aSlide afterIndex: anInteger

	self presentation addSlide: aSlide afterIndex: anInteger.
	self
		selectSlideNumber: anInteger + 1;
		updateSlideMiniatures;
		updateCurrentMiniature.
	^ aSlide