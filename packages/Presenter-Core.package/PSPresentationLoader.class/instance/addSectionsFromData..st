slide loading
addSectionsFromData: aCollection

	aCollection do: [:anAssociation |
		(self presentation slides at: anAssociation value ifAbsent: [nil])
			ifNotNil: [:aSlide |
				[self presentation
					addSectionNamed: anAssociation key
					firstSlide: aSlide]
					on: Error
					do: [:anError | nil]]]