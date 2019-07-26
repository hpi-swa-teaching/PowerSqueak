presentation serialization
exportAsPNGsIn: aDirectory

	self
		prepareExportAsPNG;
		exportSlidesAsPNGsInDirectory: aDirectory;
		disablePresentationMode.
	UIManager default inform: 'Your presentation has been exported to: ', aDirectory fullName