slide management
selectSlide: aNumber

	self currentSlideNumber: (self clampSlideNumber: aNumber).
	self slideContainer showSlide: self currentSlide 