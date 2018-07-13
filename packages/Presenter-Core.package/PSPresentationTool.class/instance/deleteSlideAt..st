slide management
deleteSlideAt: anIndex

	| deletedSlide |
	deletedSlide :=  self presentation deleteSlideAt: anIndex.
	self currentSlideNumber >= anIndex 
		ifTrue: [self selectSlideNumber: (self currentSlideNumber - 1 max: self minimumSlideCount)].
	self miniatures removeKey: deletedSlide ifAbsent: [].
	self updateSlideMiniatures