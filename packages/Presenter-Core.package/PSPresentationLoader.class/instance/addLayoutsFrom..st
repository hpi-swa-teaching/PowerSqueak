slide loading
addLayoutsFrom: aDirectory

	| layoutsDirectory |
	layoutsDirectory := aDirectory / self layoutsDirectoryName.
	layoutsDirectory exists
		ifTrue:
			[self sortedSubdirectoriesOf: layoutsDirectory
				do: [:each | self addLayoutFromDirectory: each]]
		ifFalse:
			[self layoutsDirectoryMissing: true]