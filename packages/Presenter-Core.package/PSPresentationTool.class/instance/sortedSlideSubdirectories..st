presentation loading
sortedSlideSubdirectories: aFileDirectory

	| sortedDirectories |
	sortedDirectories := OrderedCollection new.
	sortedDirectories := sortedDirectories, (OrderedCollection newFrom: aFileDirectory directoryNames).
	sortedDirectories := sortedDirectories collect: [:each |
		each splitInteger second asNumber ].
	sortedDirectories sort.
	^ sortedDirectories collect: [:each | 'slide', each]