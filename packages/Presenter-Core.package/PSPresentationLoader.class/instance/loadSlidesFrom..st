slide loading
loadSlidesFrom: aDirectory
	
	| sortedDirectories slidesPath |
	slidesPath := aDirectory / self slidesDirectoryName.
	slidesPath exists ifTrue: 
		[sortedDirectories := self sortedSubdirectories: slidesPath.
		sortedDirectories do: [:each |
			self loadSlideFromDirectory: slidesPath / each].
		self presentation class minimumSlideCount timesRepeat: [self presentation deleteSlideAt: 1]]