presentation loading
loadPresentationUnchecked: aDirectory

	| slidesDirectory errorReport sortedDirectories |
	errorReport := Dictionary new.
	self deleteAllSlides. "will remove all slides up to the minim slide count"
	slidesDirectory := aDirectory / self slidesDirectoryName.
	sortedDirectories := self sortedSlideSubdirectories: slidesDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadSlideFromDirectory: slidesDirectory / each.
		slide fullBounds.
		self updateCurrentMiniature.
		errorReport at: each 
			put: (slidesDirectory / each) fileNames size - slide submorphs size].
	self minimumSlideCount timesRepeat: [self deleteSlideAt: 1].
	self selectSlideNumber: 1.
	^ errorReport