slide management
basicDeleteSlideAt: anIndex

	| deletedSlide |
	deletedSlide := self presentation deleteSlideAt: anIndex.
	self currentSlideNumber >= anIndex
		ifTrue: [self selectSlideAt: (self currentSlideNumber - 1 max: self class minimumSlideCount)].
	self miniatureController removeMiniatureOf: deletedSlide.
	self miniatureController updateSlideMiniatures.
	^ deletedSlide