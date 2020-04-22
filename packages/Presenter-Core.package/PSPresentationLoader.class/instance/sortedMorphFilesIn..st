morph loading
sortedMorphFilesIn: aDirectory
	
	^ (self morphFilesIn: aDirectory) sorted: [:a :b |
		a splitInteger first < b splitInteger first]