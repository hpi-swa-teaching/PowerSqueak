directory checking
isEmptyDirectory: aDirectory

	^ (aDirectory exists and: [aDirectory directoryNames isEmpty not]) not