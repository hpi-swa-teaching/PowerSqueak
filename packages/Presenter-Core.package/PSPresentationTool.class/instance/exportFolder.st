presentation serialization
exportFolder

	^ (FileDirectory default / self exportFolderName)
		assureExistence;
		yourself