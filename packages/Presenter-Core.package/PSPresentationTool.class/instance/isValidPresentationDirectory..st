presentation loading
isValidPresentationDirectory: aDirectory

	| slidesDirectory |
	slidesDirectory := aDirectory / self slidesDirectoryName.
	^ slidesDirectory exists and: [slidesDirectory directoryNames isEmpty not]