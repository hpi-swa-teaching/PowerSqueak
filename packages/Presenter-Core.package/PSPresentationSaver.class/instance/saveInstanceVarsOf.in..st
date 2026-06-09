saving
saveInstanceVarsOf: aSlide in: aDirectory

	(self createInstanceVarDictionaryOf: aSlide)
		saveOnFileNamed: (aDirectory / self class metadataFileName) fullName.
	
	