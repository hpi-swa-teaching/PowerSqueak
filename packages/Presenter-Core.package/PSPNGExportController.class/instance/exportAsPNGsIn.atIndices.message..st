exporting
exportAsPNGsIn: aDirectory atIndices: aCollection message: aString

	self prepareExportAsPNG.
	[self exportSlidesAsPNGsInDirectory: aDirectory atIndices: aCollection]
		ensure: [self tool disablePresentationMode].
	UIManager default inform: aString , aDirectory fullName