scripting API
tryEvaluatingScript: aSymbol withValue: anObject

	(self content hasProperty: aSymbol)
	ifTrue: [self evaluateScript: aSymbol withValue: anObject]