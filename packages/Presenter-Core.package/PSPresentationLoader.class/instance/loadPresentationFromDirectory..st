presentation loading
loadPresentationFromDirectory: aDirectory

	self reset.
	self loadSlidesFrom: aDirectory.
	self loadLayoutsFrom: aDirectory.
	^ self presentation