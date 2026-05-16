slide management
deleteSlideAt: anIndex

	| deletedSlide section |
	self slideCount = self class minimumSlideCount
		ifTrue: [self createSlideAfter: anIndex].
	section := self sectionStartingAt: (self slideAt: anIndex).
	deletedSlide := self slides removeAt: anIndex.
	section ifNotNil: [self reanchorOrRemoveSection: section after: anIndex].
	deletedSlide abandon.
	^ deletedSlide