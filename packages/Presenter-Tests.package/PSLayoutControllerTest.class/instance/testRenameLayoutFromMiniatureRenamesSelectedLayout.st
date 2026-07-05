layout rename tests
testRenameLayoutFromMiniatureRenamesSelectedLayout

	| oldName newName |
	oldName := 'Miniature Rename Old'.
	newName := 'Miniature Rename New'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	[(self miniatureOf: self currentSlide) renameLayout]
		valueSupplyingAnswers: {
			{'Choose a layout to rename'. oldName}.
			{'Enter a new name for your Layout'. newName}}.
	self
		deny: (self tool layoutController slideLayoutNames includes: oldName);
		assert: (self tool layoutController slideLayoutNames includes: newName)