directory checking
checkSlideDirectory: aDirectory

	^ (self checkSlideDirectoryName: aDirectory localName)
		and: [self checkMorphsInDirectory: aDirectory]	