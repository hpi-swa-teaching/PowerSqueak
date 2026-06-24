parsing
numberFrom: aString

	| trimmed |
	trimmed := aString withBlanksTrimmed.
	(trimmed notEmpty and: [trimmed allSatisfy: [:character | character isDigit]])
		ifFalse: [self signalInvalidRange].
	^ trimmed asInteger
