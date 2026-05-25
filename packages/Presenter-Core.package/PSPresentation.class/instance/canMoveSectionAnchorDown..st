testing
canMoveSectionAnchorDown: aPSSlideSection

	| candidate |
	candidate := (self indexOf: aPSSlideSection firstSlide) + 1.
	^ candidate <= self slideCount
		and: [(self sectionStartingAt: (self slideAt: candidate)) isNil]
