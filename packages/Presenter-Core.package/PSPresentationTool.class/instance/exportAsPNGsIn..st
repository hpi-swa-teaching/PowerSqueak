presentation serialization
exportAsPNGsIn: aDirectory

	self
		enablePresentationMode;
		enableNonInteractiveMode.
	World doOneCycle.
	self
		exportSlidesAsPNGsInDirectory: aDirectory;
		disablePresentationMode.
	UIManager default inform: 'Your presentation has been exported to: ', aDirectory fullName