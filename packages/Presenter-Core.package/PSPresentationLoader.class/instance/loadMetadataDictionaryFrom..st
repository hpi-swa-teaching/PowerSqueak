slide loading
loadMetadataDictionaryFrom: aDirectory

	^ (aDirectory readOnlyFileNamed: self class metadataFileName) fileInObjectAndCode
	 	