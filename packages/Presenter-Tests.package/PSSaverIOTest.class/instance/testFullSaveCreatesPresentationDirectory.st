saving tests
testFullSaveCreatesPresentationDirectory
	| dirName saved |
	dirName := 'PSCovFull-' , Time millisecondClockValue printString.
	[saved := [PSPresentationSaver save: PSPresentation new] valueSupplyingAnswer: dirName.
	self assert: saved.
	self assert: (PSPresentationSaver defaultDirectory / dirName) exists]
		ensure: [(PSPresentationSaver defaultDirectory / dirName) recursiveDelete]
