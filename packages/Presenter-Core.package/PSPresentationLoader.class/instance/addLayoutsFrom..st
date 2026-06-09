slide loading
addLayoutsFrom: aDirectory
	
	self sortedSubdirectoriesOf: aDirectory / self layoutsDirectoryName
		do: [:each | self addLayoutFromDirectory: each]