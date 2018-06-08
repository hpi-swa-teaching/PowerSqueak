accessing
defaultDirectory

	^ (FileDirectory default / self defaultDirectoryName)
		assureExistence;
		yourself 