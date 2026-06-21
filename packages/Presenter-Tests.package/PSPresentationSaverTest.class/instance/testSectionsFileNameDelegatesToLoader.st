delegation test
testSectionsFileNameDelegatesToLoader

	self
		assert: PSPresentationSaver sectionsFileName
		equals: PSPresentationLoader sectionsFileName