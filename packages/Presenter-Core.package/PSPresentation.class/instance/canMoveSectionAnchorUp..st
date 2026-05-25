testing
canMoveSectionAnchorUp: aPSSlideSection

	| candidate |
	candidate := (self indexOf: aPSSlideSection firstSlide) - 1.
	^ candidate >= 1
		and: [(self sectionStartingAt: (self slideAt: candidate)) isNil]
