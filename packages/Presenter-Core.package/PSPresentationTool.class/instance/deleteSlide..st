slide management
deleteSlide: anIndex

	(self slideAt: anIndex) abandon.
	self slides removeAt: anIndex.  
	self currentSlideNumber >= anIndex ifTrue: 
		[self selectSlide: (self currentSlideNumber - 1 max: 1)].
	