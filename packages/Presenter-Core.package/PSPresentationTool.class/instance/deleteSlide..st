as yet unclassified
deleteSlide: anIndex

	| deletedSlide |
	deletedSlide :=  self presentation deleteSlideAt: anIndex.
	self miniatures removeKey: deletedSlide ifAbsent: [].
	self updateSlideMiniatures