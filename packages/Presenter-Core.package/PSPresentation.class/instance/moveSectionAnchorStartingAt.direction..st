slide management
moveSectionAnchorStartingAt: aPSSlide direction: anInteger

	| section currentIndex candidateIndex candidateSlide |
	section := self sectionStartingAt: aPSSlide.
	section ifNil: [^ self].
	currentIndex := self indexOf: aPSSlide.
	candidateIndex := currentIndex + anInteger.
	(candidateIndex < 1 or: [candidateIndex > self slideCount])
		ifTrue: [^ self].
	candidateSlide := self slideAt: candidateIndex.
	(self sectionStartingAt: candidateSlide)
		ifNotNil: [^ self].
	self setFirstSlideOfSection: section to: candidateSlide
