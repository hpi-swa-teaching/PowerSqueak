testing
isSlideHiddenByCollapseAt: anIndex

	^ (self sectionsCoveringSlideAt: anIndex)
		anySatisfy: [:each | each isCollapsed]
