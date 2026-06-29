saving
sectionData

	^ self presentation sortedSections
		collect: [:each |
			{each name.
			self presentation indexOf: each firstSlide.
			each level.
			each collapsed.
			each lastSlide ifNotNil: [:aSlide | self presentation indexOf: aSlide]}]
