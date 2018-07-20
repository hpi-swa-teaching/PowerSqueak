as yet unclassified
sortedSlideSubdirectories: aFileDirectory

	| sortedDirectories |
	sortedDirectories := OrderedCollection newFrom: aFileDirectory directoryNames.
	^ sortedDirectories sorted: [:a :b |
		a splitInteger second < b splitInteger second]