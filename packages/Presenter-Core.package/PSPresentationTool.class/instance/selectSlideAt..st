slide management
selectSlideAt: aNumber

	self currentSlideNumber: (self clampSlideNumber: aNumber).
	self slideContainer showSlide: self currentSlide.
	self highlightCurrentMiniature.
	self currentSlide enter
