presentation serialization
exportAsPNGsAtIndices: aCollection

	| directory |
	directory := PSPresentationSaver new askForPresentationDirectoryIn: self exportFolder.
	directory ifNotNil: [self exportAsPNGsIn: directory atIndices: aCollection]
