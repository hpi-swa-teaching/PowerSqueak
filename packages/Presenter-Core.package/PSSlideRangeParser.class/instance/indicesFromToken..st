parsing
indicesFromToken: aString

	^ (aString includes: self class rangeSeparator)
		ifTrue: [self indicesFromRange: aString]
		ifFalse: [Array with: (self indexFromNumber: aString)]
