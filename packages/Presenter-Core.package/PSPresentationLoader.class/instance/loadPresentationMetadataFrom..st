presentation loading
loadPresentationMetadataFrom: aDirectory

	(aDirectory / self class metadataFileName) exists ifFalse: [^ self].
	[self update: self presentation with: (self loadMetadataDictionaryFrom: aDirectory)]
		on: Error
		do: []
