parsing
validateInBounds: anInteger

	(anInteger between: 1 and: slideCount)
		ifFalse: [self signalInvalidRange]
