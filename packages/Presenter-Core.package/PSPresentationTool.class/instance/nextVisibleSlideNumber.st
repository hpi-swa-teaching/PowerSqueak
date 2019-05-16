slide management
nextVisibleSlideNumber

	^ self nearestSlideInRange: (self currentSlideNumber + 1 to: self slideCount)