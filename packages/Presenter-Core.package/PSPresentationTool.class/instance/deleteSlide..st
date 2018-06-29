slide management
deleteSlide: anIndex

	self slideCount = self minimumSlideCount
		ifTrue: [ self createSlide ]. "There should never be zero slides"

	(self slideAt: anIndex) abandon.
	self slides removeAt: anIndex.  
	self currentSlideNumber >= anIndex ifTrue: 
		[self selectSlideNumber: (self currentSlideNumber - 1 max: self minimumSlideCount)].
	
	self updateSlideMiniatures
	"self updateSlideNumbers "
	