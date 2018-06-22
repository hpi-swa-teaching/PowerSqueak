accessing
slideNumberString: aText
	
	| number prefix |
	prefix := (aText asString subStrings: '/') first.
	number := prefix asInteger.
	number ifNotNil: [self selectSlide: number].
	self changed: #slideNumberString
