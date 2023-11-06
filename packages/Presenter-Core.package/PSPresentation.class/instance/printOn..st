printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ': '.
	aStream print: self name.