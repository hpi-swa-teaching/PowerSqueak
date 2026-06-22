accessing test
testPresentationDirectoryAccessorRoundtrips

	| aDirectory |
	aDirectory := PSMockFileDirectory new.
	self saver presentationDirectory: aDirectory.
	self assert: self saver presentationDirectory == aDirectory