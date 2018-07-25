directory checking
checkSlideDirectory: aDirectory

	^ (self checkSlideDirectoryName: aDirectory localName)
		and: [aDirectory fileNames allSatisfy: [:each | 
				each matchesRegex: '[0-9]+.morph']]	