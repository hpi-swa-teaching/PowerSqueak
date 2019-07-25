as yet unclassified
clearSubdirectory: aString in: aDirectory

	(aDirectory / aString) recursiveDelete.
	World doOneCycle. "Workaround for primitive failure of createDirectory"
	^ self createDirectory: aString in: aDirectory