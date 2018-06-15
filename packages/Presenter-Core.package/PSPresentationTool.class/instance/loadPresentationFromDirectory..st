presentation loading
loadPresentationFromDirectory: aDirectory

	(self isValidPresentationDirectory: aDirectory)
		ifTrue: [self showErrorReport: (self loadPresentationUnchecked: aDirectory)]
		ifFalse: [UIManager default inform: 'I could not load the presentation. 
It''s directory might be corrupted.']