slide management
firstVisibleSlideInInterval: anInterval

	^ anInterval
		detect: [:counter | (self slideAt: counter) isHidden not]
		ifNone: [self currentSlideNumber]