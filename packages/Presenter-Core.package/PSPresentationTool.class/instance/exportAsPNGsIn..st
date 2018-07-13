exporting
exportAsPNGsIn: aDirectory

	self enablePresentationMode.
	self enableNonInteractiveMode.
	World doOneCycle.
	self exportSlidesAsPNGsInDirectory: aDirectory.
	self disablePresentationMode.
	UIManager default inform: 'Your presentation has been exported to: ', aDirectory fullName