accessing
slideNumberString: aText
	
	| number prefix |
	prefix := (aText asString subStrings: '/') at: 1 ifAbsent:[''].
	number := prefix asInteger.
	number ifNotNil: [self selectSlideNumber: number].
	self changed: #slideNumberString
