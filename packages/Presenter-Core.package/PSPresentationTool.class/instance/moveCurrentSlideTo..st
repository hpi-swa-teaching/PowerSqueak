slide management
moveCurrentSlideTo: aNumber

	self presentation moveSlideAt: self currentSlideNumber to: aNumber.
    	self 
		selectSlideNumber: aNumber;
		updateSlideMiniatures