slide loading
sortedSubdirectoriesOf: aDirectory do: aBlock
	
	aDirectory exists ifTrue:
		[self sortedSubdirectoriesOf: aDirectory doUnchecked: aBlock]