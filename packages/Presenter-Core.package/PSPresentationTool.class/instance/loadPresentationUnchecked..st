presentation loading
loadPresentationUnchecked: aDirectory

	| slidesDirectory errorReport sortedDirectories |
	errorReport := Dictionary new.
	self slides removeAll.
	slidesDirectory := aDirectory / self slidesDirectoryName.
	sortedDirectories := self sortedSlideSubdirectories: slidesDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadSlideFromDirectory: slidesDirectory / each.
		self slides addLast: slide.
		errorReport at: each 
			put: (slidesDirectory / each) fileNames size - slide submorphs size].
	self selectSlideNumber: 1.
	^ errorReport