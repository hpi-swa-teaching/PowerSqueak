collection behaviour
nextSectionAnchorAfter: anIndex

	^ self sectionAnchorNumbers
		detect: [:each | each > anIndex]
		ifNone: [nil]
