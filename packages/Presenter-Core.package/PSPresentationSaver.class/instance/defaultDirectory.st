as yet unclassified
defaultDirectory

	^ (FileDirectory default / self defaultDirectoryName)
		assureExistence;
		yourself 