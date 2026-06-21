delegation test
testLayoutsDirectoryNameDelegatesToLoader

	self
		assert: PSPresentationSaver layoutsDirectoryName
		equals: PSPresentationLoader layoutsDirectoryName