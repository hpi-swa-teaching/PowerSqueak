parsing
validateInBounds: anInteger

	(anInteger between: 1 and: self slideCount)
		ifFalse: [self signalInvalidRange]
