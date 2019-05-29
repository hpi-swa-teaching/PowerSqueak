presentation loading
loadLayoutsFrom: aDirectory
	
	| sortedDirectories |
	sortedDirectories := self sortedSlideSubdirectories: aDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadLayoutFromDirectory: aDirectory / each.
		self errorReport at: each 
			put: (self morphFilesIn: aDirectory) size - slide submorphs size].