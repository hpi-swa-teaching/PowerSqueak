testing
isSectionHidden: aPSSlideSection

	^ (self ancestorSectionsOf: aPSSlideSection)
		anySatisfy: [:each | each isCollapsed]
