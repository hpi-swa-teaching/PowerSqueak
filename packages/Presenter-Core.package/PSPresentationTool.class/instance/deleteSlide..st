slide management
deleteSlide: anIndex

	self slideCount = 1
		ifTrue: [ self createSlide ]. "There should never be zero slides"

	(self slideAt: anIndex) abandon.
	self slides removeAt: anIndex.  
	self currentSlideNumber >= anIndex ifTrue: 
		[self selectSlide: (self currentSlideNumber - 1 max: 1)].
	