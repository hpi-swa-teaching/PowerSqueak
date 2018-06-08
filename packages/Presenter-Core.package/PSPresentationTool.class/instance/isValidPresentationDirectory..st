as yet unclassified
isValidPresentationDirectory: aDirectory

	| slidesDirectory |
	slidesDirectory := aDirectory / 'slides'.
	^ slidesDirectory exists and: [slidesDirectory directoryNames isEmpty not]