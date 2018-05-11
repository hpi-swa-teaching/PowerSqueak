accessing
currentSlide

	(self currentSlideNumber <= self slides size and: [self currentSlideNumber > 0])
		ifFalse: [ self error: 'No slide available'].
	^ self slides at: self currentSlideNumber