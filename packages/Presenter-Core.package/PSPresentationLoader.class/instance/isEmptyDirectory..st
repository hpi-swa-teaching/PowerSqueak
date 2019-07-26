directory checking
isEmptyDirectory: aDirectory

	^ aDirectory exists not or: [aDirectory directoryNames isEmpty]