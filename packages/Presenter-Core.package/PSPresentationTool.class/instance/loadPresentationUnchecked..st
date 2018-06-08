presentation loading
loadPresentationUnchecked: aDirectory

	| slidesDirectory errorReport |
	errorReport := Dictionary new.
	self slides removeAll.
	slidesDirectory := aDirectory / self slidesDirectoryName.
	slidesDirectory directoryNames do: [:each | 
		errorReport at: each put: (self loadSlideFromDirectory: slidesDirectory / each)].
	self
		selectSlide: 1;
		showErrorReport: errorReport