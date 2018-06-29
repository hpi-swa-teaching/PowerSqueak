accessing
currentSlide

	(self currentSlideNumber between: 1 and: self slides size)
		ifFalse: [ self error: 'No slide available'].
	^ self slides at: self currentSlideNumber