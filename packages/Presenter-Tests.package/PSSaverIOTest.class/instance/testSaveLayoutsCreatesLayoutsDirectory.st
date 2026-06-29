saving tests
testSaveLayoutsCreatesLayoutsDirectory
	| saver tempDir |
	tempDir := (FileDirectory default / ('PSCovLayouts-' , Time millisecondClockValue printString)) assureExistence.
	[saver := PSPresentationSaver new.
	saver presentation: PSPresentation new.
	saver presentationDirectory: tempDir.
	saver saveLayouts.
	self assert: (tempDir / PSPresentationSaver layoutsDirectoryName) exists]
		ensure: [tempDir recursiveDelete]
