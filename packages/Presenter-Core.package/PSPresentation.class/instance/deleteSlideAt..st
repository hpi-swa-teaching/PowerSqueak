slide management
deleteSlideAt: anIndex

	| deletedSlide section |
	self slideCount = self class minimumSlideCount
		ifTrue: [self createSlideAfter: anIndex].
	section := self sectionStartingAt: (self slideAt: anIndex).
	deletedSlide := self slides removeAt: anIndex.
	self sections do: [:each |
		each lastSlide == deletedSlide ifTrue: [each lastSlide: nil]].
	section ifNotNil: [self reanchorOrRemoveSection: section after: anIndex].
	deletedSlide abandon.
	^ deletedSlide
