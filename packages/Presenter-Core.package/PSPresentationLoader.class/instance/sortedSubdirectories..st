morph loading
sortedSubdirectories: aDirectory

	| sortedDirectories |
	sortedDirectories := OrderedCollection newFrom: aDirectory directoryNames.
	^ sortedDirectories sorted: [:a :b |
		a splitInteger second < b splitInteger second]