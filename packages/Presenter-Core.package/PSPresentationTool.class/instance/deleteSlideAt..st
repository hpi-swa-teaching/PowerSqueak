slide management
deleteSlideAt: anIndex

	| deletedSlide |
	deletedSlide :=  self presentation deleteSlideAt: anIndex.
	self currentSlideNumber >= anIndex 
		ifTrue: [self selectSlideAt: (self currentSlideNumber - 1 max: self class minimumSlideCount)].
	self miniatures removeKey: deletedSlide ifAbsent: [].
	self updateSlideMiniatures