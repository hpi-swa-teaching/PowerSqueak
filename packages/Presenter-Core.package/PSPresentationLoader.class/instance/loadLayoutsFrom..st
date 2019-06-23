presentation loading
loadLayoutsFrom: aDirectory
	
	| sortedDirectories layoutsPath |
	layoutsPath := aDirectory / self layoutsDirectoryName.
	layoutsPath exists ifTrue:
		[sortedDirectories := self sortedSubdirectories: layoutsPath.
		sortedDirectories do: [:each |
			 | slide |
			slide := self loadLayoutFromDirectory: layoutsPath / each.
			self slidesErrorReport at: each 
				put: (self morphFilesIn: layoutsPath / each) size - slide submorphs size]]