slide management
duplicateCurrentSlide

	self presentation 
		addSlide: self currentSlide copy 
		afterIndex: self currentSlideNumber.
	self updateSlideMiniatures