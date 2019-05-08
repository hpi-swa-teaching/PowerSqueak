directory checking
checkSlideDirectoryName: aDirectoryName

	^ aDirectoryName matchesRegex: self class slideDirectoryPrefix , '[0-9]+'