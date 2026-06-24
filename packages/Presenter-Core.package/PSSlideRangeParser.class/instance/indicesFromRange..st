parsing
indicesFromRange: aString

	| ends start stop |
	ends := aString subStrings: (String with: self class rangeSeparator).
	ends size = 2 ifFalse: [self signalInvalidRange].
	start := self indexFromNumber: ends first.
	stop := self indexFromNumber: ends second.
	start <= stop ifFalse: [self signalInvalidRange].
	^ (start to: stop) asArray
