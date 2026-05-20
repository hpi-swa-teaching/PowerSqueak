presentation loading
loadPresentationFromDirectory: aDirectory

	self
		reset;
		addSlidesFrom: aDirectory;
		addLayoutsFrom: aDirectory;
		removeOldSlides;
		addSectionsFrom: aDirectory;
		showErrorReport.
	^ self presentation