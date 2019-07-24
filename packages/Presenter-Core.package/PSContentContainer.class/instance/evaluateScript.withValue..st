scripting API
evaluateScript: aSymbol withValue: anObject

	(Compiler new 
		evaluate: (self content valueOfProperty: aSymbol)
		for: self content)
	value: anObject
		