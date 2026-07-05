section navigation
previousSection

	(self presentation previousSectionAnchorBefore: self tool currentSlideNumber)
		ifNotNil: [:aNumber | self tool selectSlideAt: aNumber]