collection behaviour
expandSectionsContainingSlideAt: anIndex

	(self sectionsCoveringSlideAt: anIndex)
		do: [:each | each collapsed: false]
