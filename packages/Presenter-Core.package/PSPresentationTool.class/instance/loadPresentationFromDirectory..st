presentation serialization
loadPresentationFromDirectory: aDirectory

	| loader |
	loader := PSPresentationLoader new.
	(loader loadPresentationFromDirectory: aDirectory)
		ifNotNil: [:presentation |
			self updatePresentation: presentation withErrorReport: loader completeErrorReport]
		ifNil: [UIManager default inform: self loadCorruptionMessage]