testing
canIndentSection: aPSSlideSection

	| sorted index |
	sorted := self sortedSections.
	index := sorted indexOf: aPSSlideSection.
	^ index > 1
		and: [aPSSlideSection level <= (sorted at: index - 1) level]
