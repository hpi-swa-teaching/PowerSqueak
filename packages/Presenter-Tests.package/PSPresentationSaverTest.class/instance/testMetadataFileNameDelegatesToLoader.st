delegation test
testMetadataFileNameDelegatesToLoader

	self
		assert: PSPresentationSaver metadataFileName
		equals: PSPresentationLoader metadataFileName