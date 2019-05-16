slide management
previousVisibleSlideNumber

	^ self nearestSlideInRange: (self currentSlideNumber-1 to: 1 by: -1)