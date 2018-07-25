slide management
clampSlideNumber: aNumber

	^ aNumber 
			clampLow: self minimumSlideCount
			high: self slideCount