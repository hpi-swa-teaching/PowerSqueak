slide loading
sortedSubdirectoriesOf: aDirectory doUnchecked: aBlock
	
	(self sortedSubdirectories: aDirectory) do:
		[:each | aBlock value: aDirectory / each]