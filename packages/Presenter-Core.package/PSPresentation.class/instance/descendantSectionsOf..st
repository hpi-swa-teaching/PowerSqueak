collection behaviour
descendantSectionsOf: aPSSlideSection

	^ self sortedSections select: [:each |
		(self ancestorSectionsOf: each) includes: aPSSlideSection]
