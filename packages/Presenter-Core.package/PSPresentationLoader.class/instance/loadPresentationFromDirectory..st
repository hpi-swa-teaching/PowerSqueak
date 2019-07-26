presentation loading
loadPresentationFromDirectory: aDirectory

	self
		reset;
		addSlidesFrom: aDirectory;
		addLayoutsFrom: aDirectory;
		removeOldSlides;
		showErrorReport.
	^ self presentation