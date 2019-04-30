presentation loading
loadPresentationUnchecked: aDirectory

	self loadSlidesFrom: aDirectory / self slidesDirectoryName.
	self loadLayoutsFrom: aDirectory / self layoutsDirectoryName.
	^ self presentation