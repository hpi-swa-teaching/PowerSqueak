layout creation tests
testRenameLayoutThenCreateWithOldName

	| oldName newName |
	oldName := 'Original'.
	newName := 'Renamed'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: oldName.
	self tool layoutController renameLayoutNamed: oldName to: newName.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: oldName.
	self
		assert: (self tool layoutController slideLayoutNames includes: oldName);
		assert: (self tool layoutController slideLayoutNames includes: newName)