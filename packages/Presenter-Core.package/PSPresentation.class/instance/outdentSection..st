collection behaviour
outdentSection: aPSSlideSection

	(self sectionWithDescendants: aPSSlideSection)
		do: [:each | each level: (each level - 1 max: 1)].
	self normalizeSectionLevels
