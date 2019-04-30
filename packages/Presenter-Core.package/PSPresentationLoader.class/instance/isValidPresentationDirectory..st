directory checking
isValidPresentationDirectory: aDirectory

	^ (self isValidSlidesDirectory: aDirectory / self slidesDirectoryName) and:
	   [self isValidLayoutsDirectory: aDirectory / self layoutsDirectoryName].