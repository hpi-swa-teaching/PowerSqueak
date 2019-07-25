convenience
setPropertyOf: aString to: anotherString for: aMorph
	
	aMorph
		setProperty: (self morphPropertyOf: aString)
		toValue: (self convert: anotherString toBlockWithArguments: (self methodArgumentsOf: aString))