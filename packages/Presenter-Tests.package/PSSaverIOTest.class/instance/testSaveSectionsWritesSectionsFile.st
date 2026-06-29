saving tests
testSaveSectionsWritesSectionsFile
	| saver tempDir |
	tempDir := (FileDirectory default / ('PSCovSections-' , Time millisecondClockValue printString)) assureExistence.
	[saver := PSPresentationSaver new.
	saver presentation: PSPresentation new.
	saver presentationDirectory: tempDir.
	saver saveSections.
	self assert: (tempDir fileExists: PSPresentationSaver sectionsFileName)]
		ensure: [tempDir recursiveDelete]
