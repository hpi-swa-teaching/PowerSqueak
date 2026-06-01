accessing
sectionStartingAt: aPSSlide

	^ self sections
		detect: [:each | each firstSlide == aPSSlide]
		ifNone: [nil]