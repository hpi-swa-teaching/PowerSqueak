execution
execute

	containerCreated
		ifTrue: [location restoreContainer: container]
		ifFalse: [
			container := slide addContent: morph.
			location := PSContentLocation of: container.
			containerCreated := true].
	^ container