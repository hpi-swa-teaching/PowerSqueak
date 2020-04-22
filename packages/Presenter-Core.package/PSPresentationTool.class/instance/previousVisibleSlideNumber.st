slide management
previousVisibleSlideNumber

	^ self firstVisibleSlideInInterval: (self currentSlideNumber-1 to: 1 by: -1)