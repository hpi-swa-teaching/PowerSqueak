collection behaviour
outdentSection: aPSSlideSection

	aPSSlideSection level: (aPSSlideSection level - 1 max: 1).
	self normalizeSectionLevels
