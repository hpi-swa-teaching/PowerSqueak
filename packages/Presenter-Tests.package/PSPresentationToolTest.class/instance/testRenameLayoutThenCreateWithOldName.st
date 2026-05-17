layout creation tests
testRenameLayoutThenCreateWithOldName

	| oldName newName |
	oldName := 'Original'.
	newName := 'Renamed'.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: oldName.
	self tool renameLayoutNamed: oldName to: newName.
	[(self miniatureOf: self currentSlide) saveAsLayout] valueSupplyingAnswer: oldName.
	self
		assert: (self tool slideLayoutNames includes: oldName);
		assert: (self tool slideLayoutNames includes: newName)