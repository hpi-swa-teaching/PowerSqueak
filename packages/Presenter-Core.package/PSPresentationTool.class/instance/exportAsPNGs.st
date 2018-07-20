exporting
exportAsPNGs

	| directory |
	directory := self presentation askForPresentationDirectoryIn: self exportFolder.
	directory
		ifNotNil: [self exportAsPNGsIn: directory]