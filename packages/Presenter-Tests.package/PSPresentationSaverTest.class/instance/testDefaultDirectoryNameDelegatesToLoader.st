delegation test
testDefaultDirectoryNameDelegatesToLoader

	self
		assert: PSPresentationSaver defaultDirectoryName
		equals: PSPresentationLoader defaultDirectoryName