slide management
deleteSlide: anIndex

	| deletedSlide |
	self slideCount = self minimumSlideCount
		ifTrue: [ self createSlide ]. "There should never be zero slides"
	deletedSlide :=  self slides removeAt: anIndex. 
	deletedSlide abandon.
	self currentSlideNumber >= anIndex ifTrue: 
		[self selectSlideNumber: (self currentSlideNumber - 1 max: self minimumSlideCount)].
	
	self miniatures removeKey: deletedSlide ifAbsent: [].
	self updateSlideMiniatures
	"self updateSlideNumbers "
	