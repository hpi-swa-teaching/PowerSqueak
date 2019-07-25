slide management
addSlide: aSlide afterIndex: anInteger

	self presentation addSlide: aSlide afterIndex: anInteger.
	self
		selectSlideAt: anInteger + 1;
		updateSlideMiniatures;
		updateCurrentMiniature.
	^ aSlide