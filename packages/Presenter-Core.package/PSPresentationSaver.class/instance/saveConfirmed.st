as yet unclassified
saveConfirmed

	self presentationDirectory: (self askForPresentationDirectoryIn: self defaultDirectory).
	self presentationDirectory ifNil: [^ self].
	self 
		saveSlides;
		saveLayouts