saving
sectionData

	^ self presentation sortedSections
		collect: [:each |
			{each name.
			self presentation indexOf: each firstSlide.
			each level.
			each isCollapsed.
			each lastSlide ifNotNil: [:s | self presentation indexOf: s]}]
