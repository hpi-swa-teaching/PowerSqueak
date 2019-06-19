presentation serialization
loadPresentationFromDirectory: aDirectory

	| loader |
	loader := PSPresentationLoader new.
	(loader loadPresentationFromDirectory: aDirectory)
		ifNotNil: [:presentation |
			self updatePresentation: presentation withErrorReport: loader errorReport]
		ifNil: [UIManager default inform: self loadCorruptionMessage]