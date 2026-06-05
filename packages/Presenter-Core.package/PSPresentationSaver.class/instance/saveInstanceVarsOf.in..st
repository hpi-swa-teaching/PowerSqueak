saving
saveInstanceVarsOf: aSlide in: aDirectory

	| metadata |
	metadata := self createInstanceVarDictionaryOf: aSlide.
	metadata at: #expectedMorphCount put: aSlide submorphs size.
	metadata saveOnFileNamed:
		(aDirectory / self class metadataFileName) fullName