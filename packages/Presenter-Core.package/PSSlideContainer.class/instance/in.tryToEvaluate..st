events-processing
in: aDictionary tryToEvaluate: evt

	evt isKeyboard 
		ifTrue: [	(aDictionary at: evt keyCharacter ifAbsent: []) value]