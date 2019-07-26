presentation loading
loadPresentationFromDirectory: aDirectory

	self reset.
	self loadSlidesFrom: aDirectory.
	self loadLayoutsFrom: aDirectory.
	self presentation
		ifNotNil: [UIManager default inform: self completeErrorReport. 
				^ self presentation]
		ifNil: [UIManager default inform: self class loadCorruptionMessage]