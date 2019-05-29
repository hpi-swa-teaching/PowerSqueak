presentation loading
loadSlidesFrom: aDirectory
	
	| sortedDirectories |
	sortedDirectories := self sortedSlideSubdirectories: aDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadSlideFromDirectory: aDirectory / each.
		self errorReport at: each 
			put: (self morphFilesIn: aDirectory) size - slide submorphs size].
	self presentation minimumSlideCount timesRepeat: [self presentation deleteSlideAt: 1].