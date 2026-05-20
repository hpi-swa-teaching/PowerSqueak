accessing
sortedSections

	^ (self sections asSortedCollection:
		[:aSection :anotherSection |
			(self indexOf: aSection firstSlide) <= (self indexOf: anotherSection firstSlide)])
		asOrderedCollection