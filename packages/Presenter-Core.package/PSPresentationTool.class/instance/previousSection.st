slide management
previousSection

	(self presentation previousSectionAnchorBefore: self currentSlideNumber)
		ifNotNil: [:aNumber | self selectSlideAt: aNumber]
