scripting API
tryEvaluatingScript: aSymbol withValue: anObject

	((self content hasProperty: aSymbol) and: [anObject isNil not])
		ifTrue: [self evaluateScript: aSymbol withValue: anObject]