slide management
selectSlide: aNumber

	self currentSlideNumber: (aNumber clampLow: self minimumSlideCount high: self slides size).
	self slideContainer showSlide: self currentSlide 