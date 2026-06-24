presentation serialization
exportAsPNGsIn: aDirectory atIndices: aCollection

	self
		prepareExportAsPNG;
		exportSlidesAsPNGsInDirectory: aDirectory atIndices: aCollection;
		disablePresentationMode.
	UIManager default inform: 'Your selected slides have been exported to: ' , aDirectory fullName
