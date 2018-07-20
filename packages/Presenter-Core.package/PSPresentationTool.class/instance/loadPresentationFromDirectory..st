presentation serialization
loadPresentationFromDirectory: aDirectory

	| loader |
	loader := PSPresentationLoader new.
	(loader loadPresentationFromDirectory: aDirectory)
		ifNotNil: [:presentation |
			self updatePresentation: presentation withErrorReport: loader errorReport]
		ifNil: [UIManager default inform: 'I could not load the presentation. 
It''s directory might be corrupted.']