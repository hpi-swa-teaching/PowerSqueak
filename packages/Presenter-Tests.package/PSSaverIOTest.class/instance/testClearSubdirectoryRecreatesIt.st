saving tests
testClearSubdirectoryRecreatesIt
	| saver tempDir |
	tempDir := (FileDirectory default / ('PSCovClear-' , Time millisecondClockValue printString)) assureExistence.
	[saver := PSPresentationSaver new.
	saver createDirectory: 'sub' in: tempDir.
	saver clearSubdirectory: 'sub' in: tempDir.
	self assert: (tempDir / 'sub') exists]
		ensure: [tempDir recursiveDelete]
