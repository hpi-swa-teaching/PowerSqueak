slide management
moveSlide: aSlide to: aNumber

	self presentation moveSlideAt: aSlide slideNumber to: aNumber.
    	self 
		selectSlideAt: aNumber;
		updateSlideMiniatures