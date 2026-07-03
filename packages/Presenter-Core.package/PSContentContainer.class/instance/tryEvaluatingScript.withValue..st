scripting API
tryEvaluatingScript: aSymbol withValue: anObject

	((self content hasProperty: aSymbol) and: [anObject notNil])
		ifTrue: [self evaluateScript: aSymbol withValue: anObject]