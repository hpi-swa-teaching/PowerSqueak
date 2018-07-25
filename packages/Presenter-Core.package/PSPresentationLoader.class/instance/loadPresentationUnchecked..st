presentation loading
loadPresentationUnchecked: aDirectory

	| slidesDirectory sortedDirectories |
	slidesDirectory := aDirectory / self slidesDirectoryName.
	sortedDirectories := self sortedSlideSubdirectories: slidesDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadSlideFromDirectory: slidesDirectory / each.
		self errorReport at: each 
			put: (slidesDirectory / each) fileNames size - slide submorphs size].
	self presentation minimumSlideCount timesRepeat: [self presentation deleteSlideAt: 1].
	^ self presentation