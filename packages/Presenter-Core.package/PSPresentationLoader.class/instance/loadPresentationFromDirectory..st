presentation loading
loadPresentationFromDirectory: aDirectory

	self
		reset;
		addSlidesFrom: aDirectory;
		addLayoutsFrom: aDirectory;
		removeOldSlides;
		loadPresentationMetadataFrom: aDirectory;
		showErrorReport.
	^ self presentation
