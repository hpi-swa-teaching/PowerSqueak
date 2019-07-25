filesystem
defaultDirectory

	^ (FileDirectory default / self class defaultDirectoryName)
		assureExistence;
		yourself 