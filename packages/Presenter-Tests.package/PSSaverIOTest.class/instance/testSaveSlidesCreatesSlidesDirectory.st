saving tests
testSaveSlidesCreatesSlidesDirectory
	| saver tempDir |
	tempDir := (FileDirectory default / ('PSCovSlides-' , Time millisecondClockValue printString)) assureExistence.
	[saver := PSPresentationSaver new.
	saver presentation: PSPresentation new.
	saver presentationDirectory: tempDir.
	saver saveSlides.
	self assert: (tempDir / PSPresentationSaver slidesDirectoryName) exists]
		ensure: [tempDir recursiveDelete]
