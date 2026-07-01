saving tests
testSaveInstanceVarsWritesMetadata
	| saver tempDir presentation |
	tempDir := (FileDirectory default / ('PSCovMeta-' , Time millisecondClockValue printString)) assureExistence.
	presentation := PSPresentation new.
	[saver := PSPresentationSaver new.
	saver presentation: presentation.
	saver saveInstanceVarsOf: presentation slides first in: tempDir.
	self assert: (tempDir fileExists: PSPresentationSaver metadataFileName)]
		ensure: [tempDir recursiveDelete]
