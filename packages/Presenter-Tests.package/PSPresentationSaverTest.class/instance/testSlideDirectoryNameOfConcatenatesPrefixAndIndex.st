filesystem test
testSlideDirectoryNameOfConcatenatesPrefixAndIndex

	self
		assert: (self saver slideDirectoryNameOf: 5)
		equals: PSPresentationSaver slideDirectoryPrefix , '5'