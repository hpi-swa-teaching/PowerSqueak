directory checking
isValidSlidesDirectory: aDirectory

	^ (self isValidDirectory: aDirectory)
		and: [aDirectory directoryNames allSatisfy:  [:each | 
				self checkSlideDirectory: aDirectory / each]]