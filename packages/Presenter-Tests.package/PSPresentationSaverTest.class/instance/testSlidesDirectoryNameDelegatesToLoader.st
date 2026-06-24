delegation test
testSlidesDirectoryNameDelegatesToLoader

	self
		assert: PSPresentationSaver slidesDirectoryName
		equals: PSPresentationLoader slidesDirectoryName