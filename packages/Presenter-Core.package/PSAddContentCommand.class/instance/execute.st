execution
execute

	container
		ifNil: [
			container := slide addContent: morph.
			location := PSContentLocation of: container]
		ifNotNil: [location restoreContainer: container].
	^ container