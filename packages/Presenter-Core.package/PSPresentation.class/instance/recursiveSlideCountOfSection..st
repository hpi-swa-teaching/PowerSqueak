collection behaviour
recursiveSlideCountOfSection: aPSSlideSection

	^ (1 to: self slideCount)
		count: [:index | (self sectionsCoveringSlideAt: index) includes: aPSSlideSection]
