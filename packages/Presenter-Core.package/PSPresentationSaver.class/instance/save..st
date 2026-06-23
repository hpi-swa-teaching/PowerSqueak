saving
save: aPresentation

	self presentation: aPresentation.
	self presentationDirectory: (self askForPresentationDirectoryIn: self class defaultDirectory).
	self presentationDirectory ifNil: [^ false].
	self
		saveSlides;
		saveLayouts;
		saveSections.
	^ true