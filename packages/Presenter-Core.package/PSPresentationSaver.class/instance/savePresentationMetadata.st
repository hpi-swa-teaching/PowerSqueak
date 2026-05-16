saving
savePresentationMetadata

	self createPresentationMetadataDictionary
		saveOnFileNamed: (self presentationDirectory / self class metadataFileName) fullName
