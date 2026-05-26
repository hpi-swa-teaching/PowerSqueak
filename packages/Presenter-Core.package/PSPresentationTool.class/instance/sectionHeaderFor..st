slide miniatures
sectionHeaderFor: aPSSlideSection

	^ self sectionHeaders
		at: aPSSlideSection
		ifAbsentPut: [PSSectionHeader forSection: aPSSlideSection tool: self]
