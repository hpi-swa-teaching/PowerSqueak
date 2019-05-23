presentation loading
loadLayoutsFrom: aDirectory
	
	| sortedDirectories |
	sortedDirectories := self sortedSlideSubdirectories: aDirectory.
	sortedDirectories do: [:each |
		 | slide |
		slide := self loadLayoutFromDirectory: aDirectory / each.
		self errorReport at: each 
			put: (aDirectory / each) fileNames size -1 - slide submorphs size].