saving tests
testOverwriteConfirmRecreatesDirectory
	| dirName |
	dirName := 'PSCovOver-' , Time millisecondClockValue printString.
	[[PSPresentationSaver save: PSPresentation new] valueSupplyingAnswer: dirName.
	[PSPresentationSaver save: PSPresentation new]
		valueSupplyingAnswers: {
			{'*presentation name*' . dirName}.
			{'*overwrite*' . true}}.
	self assert: (PSPresentationSaver defaultDirectory / dirName) exists]
		ensure: [(PSPresentationSaver defaultDirectory / dirName) recursiveDelete]
