accessing
currentSlide

	self flag: #TODO. "Decide on whether to allow 0 slides".
	(self currentSlideNumber <= self slides size and: [self currentSlideNumber > 0])
		ifFalse: [ self error: 'No slide available'].
	^ self slides at: self currentSlideNumber