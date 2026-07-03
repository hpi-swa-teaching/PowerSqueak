presentation loading
showErrorReport

	UIManager default inform: (self presentation
		ifNil: [self class loadCorruptionMessage]
		ifNotNil: [self completeErrorReport])