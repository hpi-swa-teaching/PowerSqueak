saving
sectionData

	^ self presentation sortedSections
		collect: [:each | each name -> (self presentation indexOf: each firstSlide)]