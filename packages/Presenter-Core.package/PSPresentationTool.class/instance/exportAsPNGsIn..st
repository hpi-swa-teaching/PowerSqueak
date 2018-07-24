presentation serialization
exportAsPNGsIn: aDirectory
	
	self enablePresentationMode.
	self enableNonInteractiveMode.
	
	World doOneCycle.
	self exportSlidesAsPNGsInDirectory: aDirectory.
	
	self disablePresentationMode.	
	UIManager default inform: self exportMessage , aDirectory fullName