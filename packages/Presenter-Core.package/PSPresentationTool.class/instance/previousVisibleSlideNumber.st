slide management
previousVisibleSlideNumber

	^ self firstVisibleSlideInRange: (self currentSlideNumber-1 to: 1 by: -1)