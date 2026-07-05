section navigation
nextSection

	(self presentation nextSectionAnchorAfter: self tool currentSlideNumber)
		ifNotNil: [:aNumber | self tool selectSlideAt: aNumber]