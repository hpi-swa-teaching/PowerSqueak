accessing
currentSlide

	(self currentSlideNumber between: 1 and: self slideCount)
		ifFalse: [ self error: 'No slide available'].
	^ self presentation slideAt: self currentSlideNumber