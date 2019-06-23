presentation loading
loadSlidesFrom: aDirectory
	
	| sortedDirectories slidesPath |
	slidesPath := aDirectory / self slidesDirectoryName.
	slidesPath exists ifTrue: 
		[sortedDirectories := self sortedSubdirectories: slidesPath.
		sortedDirectories do: [:each |
			 | slide  |
			slide := self loadSlideFromDirectory: slidesPath / each.
				self slidesErrorReport at: each put: (self morphFilesIn: slidesPath / each) size - slide submorphs size].
		self presentation minimumSlideCount timesRepeat: [self presentation deleteSlideAt: 1]]