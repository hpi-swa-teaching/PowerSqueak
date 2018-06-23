accessing
should: aBlock raise: anException withDescriptionContainingCaseInsensitive: aString

	^ self assert: ([aBlock value. false] 
			on: anException 
			do: [:exception |
				exception description asLowercase includesSubstring: aString asLowercase])