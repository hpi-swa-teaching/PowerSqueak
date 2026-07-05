slide management
basicAddSlide: aSlide afterIndex: anInteger

	self presentation addSlide: aSlide afterIndex: anInteger.
	self
		selectSlideAt: anInteger + 1.
	self miniatureController
		updateSlideMiniatures;
		updateCurrentMiniature.
	^aSlide