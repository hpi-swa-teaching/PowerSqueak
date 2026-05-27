collection behaviour
promoteChildrenOfSection: aPSSlideSection

	(self directChildSectionsOf: aPSSlideSection) do: [:each |
		each level: (each level - 1 max: 1)].
	self sections remove: aPSSlideSection ifAbsent: [].
	self normalizeSectionLevels
