collection behaviour
indentSection: aPSSlideSection

	(self sectionWithDescendants: aPSSlideSection)
		do: [:each | each level: each level + 1]