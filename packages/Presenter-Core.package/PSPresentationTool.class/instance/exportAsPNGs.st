exporting
exportAsPNGs

	| directory |
	directory := self askForPresentationDirectoryIn: self exportFolder.
	directory
		ifNotNil: [self exportAsPNGsIn: directory]