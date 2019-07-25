as yet unclassified
save: aPresentation

	self presentation: aPresentation.
	self presentationDirectory: (self askForPresentationDirectoryIn: self defaultDirectory).
	self presentationDirectory ifNil: [^ self].
	self 
		saveSlides;
		saveLayouts