slide management
nextSection

	(self presentation nextSectionAnchorAfter: self currentSlideNumber)
		ifNotNil: [:aNumber | self selectSlideAt: aNumber]
