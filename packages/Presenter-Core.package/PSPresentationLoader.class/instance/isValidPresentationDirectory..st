directory checking
isValidPresentationDirectory: aDirectory

	^ (self isValidContentDirectory: aDirectory / self slidesDirectoryName namesSatisfy: [:each | self checkSlideDirectoryName: each])