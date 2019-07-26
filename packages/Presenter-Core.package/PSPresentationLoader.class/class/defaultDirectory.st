constants
defaultDirectory

	^ (FileDirectory default / self defaultDirectoryName)
		assureExistence;
		yourself