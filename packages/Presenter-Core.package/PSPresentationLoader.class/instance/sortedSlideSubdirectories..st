slide loading
sortedSlideSubdirectories: aFileDirectory

	| sortedDirectories |
	sortedDirectories := OrderedCollection newFrom: (aFileDirectory directoryNames "select: [:each | each endsWith: '.morph']").
	^ sortedDirectories sorted: [:a :b |
		a splitInteger second < b splitInteger second]