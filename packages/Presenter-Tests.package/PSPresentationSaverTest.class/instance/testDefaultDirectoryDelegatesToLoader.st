delegation test
testDefaultDirectoryDelegatesToLoader

	self
		assert: PSPresentationSaver defaultDirectory
		equals: PSPresentationLoader defaultDirectory