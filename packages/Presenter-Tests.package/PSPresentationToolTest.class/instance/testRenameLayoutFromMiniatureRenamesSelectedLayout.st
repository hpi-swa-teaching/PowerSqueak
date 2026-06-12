layout rename tests
testRenameLayoutFromMiniatureRenamesSelectedLayout

	| oldName newName |
	oldName := 'Miniature Rename Old'.
	newName := 'Miniature Rename New'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	[(self miniatureOf: self currentSlide) renameLayout]
		valueSupplyingAnswers: {oldName. newName}.
	self
		deny: (self tool slideLayoutNames includes: oldName);
		assert: (self tool slideLayoutNames includes: newName)