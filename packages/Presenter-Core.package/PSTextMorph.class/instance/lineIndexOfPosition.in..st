bullets
lineIndexOfPosition: aPosition in: aString

	| clampedPosition |
	clampedPosition := aPosition min: aString size.
	^ ((aString copyFrom: 1 to: clampedPosition)
		occurrencesOf: Character cr) + 1
