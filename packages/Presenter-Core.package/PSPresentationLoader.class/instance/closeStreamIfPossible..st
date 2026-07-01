morph loading
closeStreamIfPossible: aStream

	(aStream respondsTo: #close)
		ifTrue: [aStream close]