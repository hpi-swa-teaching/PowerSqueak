slide management
firstVisibleSlideInRange: aRange

	^ aRange
		detect: [:counter | (self slideAt: counter) isHidden not]
		ifNone: [self currentSlideNumber]