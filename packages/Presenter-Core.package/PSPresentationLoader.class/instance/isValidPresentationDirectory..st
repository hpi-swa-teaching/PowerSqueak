directory checking
isValidPresentationDirectory: aDirectory

	^ (self isValidContentDirectory: aDirectory / self slidesDirectoryName namesSatisfy: [:each | self checkSlideDirectoryName: each]) and:
	   [self isValidContentDirectory: aDirectory / self layoutsDirectoryName namesSatisfy: [:each | self checkLayoutDirectoryName: each]]