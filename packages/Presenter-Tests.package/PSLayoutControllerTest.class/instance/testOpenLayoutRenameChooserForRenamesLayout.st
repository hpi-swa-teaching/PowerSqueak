layout rename tests
testOpenLayoutRenameChooserForRenamesLayout

	| oldName newName |
	oldName := 'Rename Dialog Old'.
	newName := 'Rename Dialog New'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	[self tool layoutController openLayoutRenameChooserFor: oldName] valueSupplyingAnswer: newName.
	self
		deny: (self tool layoutController slideLayoutNames includes: oldName);
		assert: (self tool layoutController slideLayoutNames includes: newName)