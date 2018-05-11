slide management
selectSlide: aNumber

	self currentSlideNumber: 
		(aNumber 
			clampLow: self minimumSlideCount 
			high: self slideCount).
	self slideContainer showSlide: self currentSlide 