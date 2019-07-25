presentation serialization
loadPresentationFromDirectory: aDirectory

	| loader |
	loader := PSPresentationLoader new.
	(loader loadPresentationFromDirectory: aDirectory)
		ifNotNil: [:aPresentation |
			self updatePresentation: aPresentation withErrorReport: loader completeErrorReport]
		ifNil: [UIManager default inform: self loadCorruptionMessage]