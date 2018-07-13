exporting
exportFolder

	^ (FileDirectory default / self exportFolderName)
		assureExistence;
		yourself