slide management
nextVisibleSlideNumber

	^ self firstVisibleSlideInInterval: (self currentSlideNumber + 1 to: self slideCount)