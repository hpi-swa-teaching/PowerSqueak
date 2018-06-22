as yet unclassified
clampSlideNumber: aNumber

	^ aNumber 
			clampLow: self minimumSlideCount
			high: self slideCount