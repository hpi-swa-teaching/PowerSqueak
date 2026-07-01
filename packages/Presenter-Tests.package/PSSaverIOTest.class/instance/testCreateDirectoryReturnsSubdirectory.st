saving tests
testCreateDirectoryReturnsSubdirectory
	| saver tempDir created |
	tempDir := (FileDirectory default / ('PSCovCreate-' , Time millisecondClockValue printString)) assureExistence.
	[saver := PSPresentationSaver new.
	created := saver createDirectory: 'sub' in: tempDir.
	self assert: created exists.
	self assert: (tempDir / 'sub') exists]
		ensure: [tempDir recursiveDelete]
