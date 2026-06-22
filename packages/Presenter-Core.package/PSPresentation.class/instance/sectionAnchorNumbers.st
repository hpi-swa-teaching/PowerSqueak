collection behaviour
sectionAnchorNumbers

	^ self sortedSections
		collect: [:each | self indexOf: each firstSlide]
