slide management
moveSlide: aSlide to: aNumber

	self presentation moveSlideAt: aSlide slideNumber to: aNumber.
    	self 
		selectSlideNumber: aNumber;
		updateSlideMiniatures