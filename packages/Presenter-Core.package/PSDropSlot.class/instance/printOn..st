printing
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: '(index='; print: self insertionIndex;
		nextPutAll: ' indent='; print: self indent;
		nextPutAll: ' section='; print: self targetSection;
		nextPutAll: ')'
