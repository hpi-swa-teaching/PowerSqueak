presentation serialization
exportAsPNGs

	| directory |
	directory := PSPresentationSaver new askForPresentationDirectoryIn: self exportFolder.
	directory
		ifNotNil: [self exportAsPNGsIn: directory]