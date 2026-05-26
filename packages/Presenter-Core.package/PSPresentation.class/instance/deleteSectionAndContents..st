slide management
deleteSectionAndContents: aPSSlideSection

	| sectionsToRemove indicesToDelete |
	sectionsToRemove := (self descendantSectionsOf: aPSSlideSection)
		copyWith: aPSSlideSection.
	indicesToDelete := (1 to: self slideCount)
		select: [:index | (self sectionsCoveringSlideAt: index) includes: aPSSlideSection].
	indicesToDelete reverseDo: [:index | self deleteSlideAt: index].
	sectionsToRemove do: [:each | self sections remove: each ifAbsent: []]
