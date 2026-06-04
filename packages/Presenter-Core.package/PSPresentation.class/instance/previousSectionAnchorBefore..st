collection behaviour
previousSectionAnchorBefore: anIndex

	^ (self sectionAnchorNumbers select: [:each | each < anIndex])
		ifEmpty: [nil]
		ifNotEmpty: [:anchors | anchors last]
