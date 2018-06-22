initialize-release
initializeShortcuts: aCollection in: aDictionary

	aCollection do: [:each |
		aDictionary at: each first put: each second]