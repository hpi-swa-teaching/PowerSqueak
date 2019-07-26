presentation loading
showErrorReport

	self presentation
		ifNotNil: [UIManager default inform: self completeErrorReport]
		ifNil: [UIManager default inform: self class loadCorruptionMessage]