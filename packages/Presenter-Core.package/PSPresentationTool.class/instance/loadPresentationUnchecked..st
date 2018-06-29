presentation loading
loadPresentationUnchecked: aDirectory

	| slidesDirectory errorReport sortedDirectories |
	errorReport := Dictionary new.
	self slides removeAll.
	slidesDirectory := aDirectory / self slidesDirectoryName.
	sortedDirectories := self sortedSlideSubdirectories: slidesDirectory.
	sortedDirectories do: [:each |
		errorReport at: each put: (self loadSlideFromDirectory: slidesDirectory / each)].
	self selectSlideNumber: 1.
	^ errorReport