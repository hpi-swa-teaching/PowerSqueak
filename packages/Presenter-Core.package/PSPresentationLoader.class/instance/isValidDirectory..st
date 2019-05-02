directory checking
isValidDirectory: aDirectory

	^ aDirectory exists and: [aDirectory directoryNames isEmpty not]