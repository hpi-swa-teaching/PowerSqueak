as yet unclassified
isValidPresentationDirectory: aDirectory

	| slidesDirectory |
	slidesDirectory := aDirectory / self slidesDirectoryName.
	^ slidesDirectory exists
		and: [slidesDirectory directoryNames isEmpty not]
		and: [slidesDirectory directoryNames allSatisfy:  [:each | 
				self checkSlideDirectory: slidesDirectory / each]]