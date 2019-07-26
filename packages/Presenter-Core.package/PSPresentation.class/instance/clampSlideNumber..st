slide management
clampSlideNumber: aNumber

	^ aNumber 
			clampLow: self class minimumSlideCount
			high: self slideCount