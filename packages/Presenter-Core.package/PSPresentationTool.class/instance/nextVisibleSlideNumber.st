slide management
nextVisibleSlideNumber

	^ self firstVisibleSlideInRange: (self currentSlideNumber + 1 to: self slideCount)